# -*- coding: utf-8 -*-
"""
@Time       : 2023/4/3 9:50
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : gui_main.py
@Description: 
"""
import os
import sys
import traceback
from typing import Any, Callable, List, Optional, Tuple, Union

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QObject, QRegExp, Qt
from PyQt5.QtGui import QColor, QFont, QFontDatabase, QSyntaxHighlighter, QTextCharFormat
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtWidgets import QAction, QApplication, QComboBox, QDesktopWidget, QFileDialog, QHBoxLayout, QLabel, QLineEdit, QMainWindow, QMdiArea, QMdiSubWindow, \
    QMessageBox, QSizePolicy, QStyleFactory, QTableWidget, QTableWidgetItem, QTextEdit, QVBoxLayout, QWidget

from gui_backend import WorkerThread


class CCodeHighlighter(QSyntaxHighlighter):
    @staticmethod
    def __c_style():
        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#7f0055"))
        keyword_format.setFontWeight(QFont.Bold)

        keywords = ["\\#", "include", "define", "auto", "break", "case", "char", "const", "continue", "default", "do", "double", "else", "enum", "extern",
                    "float", "for", "goto", "if", "int", "long", "register", "return", "short", "signed", "sizeof", "static", "struct",
                    "switch", "typedef", "union", "unsigned", "void", "volatile", "while"]
        keyword_pattern = "\\b(" + "|".join(keywords) + ")\\b"

        comment_format = QTextCharFormat()
        comment_format.setForeground(QColor("#2e8b57"))
        string_format = QTextCharFormat()
        string_format.setForeground((QColor("#2e8b57")))

        rules = [
            (QRegExp(r"//[^\n]*"), comment_format),  # single-line comment
            (QRegExp(r"/\\*[^*]*\\*+(?:[^/*][^*]*\\*+)*/"), comment_format),  # multi-line comment
            (QRegExp("\".*\""), string_format),  # double-quoted string
            (QRegExp("'.{1}'"), string_format),  # single-quoted character
            (QRegExp(keyword_pattern), keyword_format),
        ]

        return rules

    @staticmethod
    def __arm_asm_style():

        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#8800A0"))
        keyword_format.setFontWeight(QFont.Bold)

        address_format = QTextCharFormat()
        address_format.setFontWeight(QFont.Bold)

        comment_format = QTextCharFormat()
        comment_format.setForeground(QColor("#888a85"))

        rules = [
            (QRegExp(r"[0-9a-f]{16}\s*<.+>:"), keyword_format),  # symbol
            (QRegExp(r"[0-9a-f]{6}:"), address_format),  # instruction address
            (QRegExp(r"//[^\n]*"), comment_format),  # comment
        ]

        return rules

    @staticmethod
    def __mb_style():

        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#8800A0"))
        keyword_format.setFontWeight(QFont.Bold)

        rules = [
            (QRegExp(r"\(\s*[x0-9a-f]+\s*,\s*[x0-9a-f]+\s*\)"), keyword_format),
        ]

        return rules

    def __init__(self, parent=None, style='C'):
        super().__init__(parent)
        if style.lower() in {'c', 'c++', 'cpp'}:
            self.rules = self.__c_style()
        elif style.lower() == 'asm':
            self.rules = self.__arm_asm_style()
        elif style.lower() == 'mb':
            self.rules = self.__mb_style()
        else:
            self.rules = []

    def highlightBlock(self, text):
        for pattern, char_format in self.rules:
            match = pattern.indexIn(text)
            while match >= 0:
                length = pattern.matchedLength()
                self.setFormat(match, length, char_format)
                match = pattern.indexIn(text, match + length)


class SubWindow(QMdiSubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent)
        self.setStyle(QStyleFactory.create("Fusion"))
        self.setWindowTitle(kwargs.get("title", "SubWindow"))
        self.resize(*kwargs.get("default_size", (400, 600)))
        self.setMinimumSize(*kwargs.get("minimal_size", (200, 300)))
        self.setWindowFlags(self.windowFlags() & ~QtCore.Qt.WindowCloseButtonHint)

    def closeEvent(self, a0: QtGui.QCloseEvent) -> None:
        a0.ignore()


class OptWebView(QWebEngineView):
    def __init__(self):
        super(OptWebView, self).__init__()
        self.setUrl(QtCore.QUrl("about:blank"))

    def render_local_file(self, f=None):
        if f is None:
            self.clear()
        else:
            self.setUrl(QtCore.QUrl("file:///{}".format(f)))

    def clear(self):
        self.setUrl(QtCore.QUrl("about:blank"))


class MemoryBlockWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.__data_mapping = dict()

        self.combo_box = QComboBox()
        font = QFontDatabase.systemFont(QFontDatabase.GeneralFont)
        font.setFamily("Times Now Roman")
        font.setBold(True)
        font.setPixelSize(17)
        self.combo_box.setFont(font)

        self.text_edit = QTextEdit()
        self.text_edit.setFont(QFont("Consolas", 10))
        self.text_edit.setReadOnly(True)
        self.highlighter = CCodeHighlighter(self.text_edit, style='mb')

        self.combo_box.currentTextChanged.connect(self.__set_text)
        self.combo_box.addItem("None")

        layout = QVBoxLayout()
        layout.addWidget(self.combo_box)
        layout.addWidget(self.text_edit)
        widget = QWidget()
        widget.setLayout(layout)
        self.setWidget(widget)

    def set_data(self, data_mapping: dict):
        self.__data_mapping = data_mapping
        keys = tuple(data_mapping.keys())
        self.combo_box.clear()
        self.combo_box.addItems(keys)

    def __set_text(self):
        txt = self.__data_mapping.get(self.combo_box.currentText(), "")
        self.text_edit.setText(txt)


class ResultTableWindow(SubWindow):

    __style_table = """
        QTableView , QTableWidget{
            selection-background-color:#44c767;
            background-color:white;
            border:1px solid #E0DDDC;
            gridline-color:lightgray;
        }
    """

    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)
        self.__data_mapping = list()

        self.combo_box = QComboBox()
        font = QFontDatabase.systemFont(QFontDatabase.GeneralFont)
        font.setFamily("Times Now Roman")
        font.setBold(True)
        font.setPixelSize(17)
        self.combo_box.setFont(font)

        self.table_widget = QTableWidget()
        self.table_widget.setColumnCount(4)
        self.table_widget.setEditTriggers(QTableWidget.NoEditTriggers)
        self.table_widget.setSelectionMode(QTableWidget.NoSelection)
        self.table_widget.setStyleSheet(self.__style_table)
        font = QFontDatabase.systemFont(QFontDatabase.GeneralFont)
        font.setFamily('Arial')
        font.setPixelSize(15)
        self.table_widget.setFont(font)

        self.combo_box.currentTextChanged.connect(self.__set_table_data)
        self.combo_box.addItem("None")

        layout = QVBoxLayout()
        layout.addWidget(self.combo_box)
        layout.addWidget(self.table_widget)
        widget = QWidget()
        widget.setLayout(layout)
        self.setWidget(widget)

    def set_data(self, items: List[str], data_mapping: dict):
        self.__data_mapping = data_mapping
        self.combo_box.clear()
        self.combo_box.addItems([item for item in items if item in self.__data_mapping])

    def __set_table_data(self):
        self.table_widget.clear()
        self.table_widget.setColumnCount(4)
        headers = ['Page Number', 'LS Result', 'Hotness Result', 'Cache Result']
        self.table_widget.setHorizontalHeaderLabels(headers)
        if (t := self.combo_box.currentText()) in ('None', ''):
            self.table_widget.setRowCount(0)
            return
        data = self.__data_mapping[t]
        self.table_widget.setRowCount(len(data))
        for row, row_data in enumerate(data):
            for col, cell_data in enumerate(row_data):
                item = QTableWidgetItem(cell_data)
                item.setTextAlignment(Qt.AlignCenter)
                if col == 0:
                    font = QFont()
                    font.setBold(True)
                    item.setFont(font)
                self.table_widget.setItem(row, col, item)


class TargetCodeWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.text_edit = QTextEdit()
        self.text_edit.setFont(QFont("Consolas", 12))
        self.text_edit.setReadOnly(True)
        self.highlighter = CCodeHighlighter(self.text_edit, style='c')
        self.setWidget(self.text_edit)

    def set_c_code(self, code: str):
        self.text_edit.setPlainText(code)


class ASMWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.text_edit = QTextEdit()
        self.text_edit.setFont(QFont("Consolas", 10))
        self.text_edit.setReadOnly(True)
        self.highlighter = CCodeHighlighter(self.text_edit, style='asm')
        self.setWidget(self.text_edit)

    def set_asm_code(self, code: str):
        self.text_edit.setPlainText(code)


class CFGWindow(SubWindow):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)
        self.graph_render = OptWebView()
        self.setWidget(self.graph_render)

    def render_graph(self, file_name=None):
        self.graph_render.clear()
        self.graph_render.render_local_file(file_name)


class ActionWithMapping(QAction):
    def __init__(self, action_name: str, action_key: Any,
                 parent: Optional[QObject] = None,
                 shortcut: Optional[str] = None,
                 clickable: bool = False, clicked: bool = True):

        super(ActionWithMapping, self).__init__(action_name, parent)
        self.__action_key = action_key
        if shortcut is not None:
            self.setShortcut(shortcut)
        if clickable:
            self.setCheckable(clickable)
            self.setChecked(clicked)

    @property
    def key(self):
        return self.__action_key


class UserInput:
    @staticmethod
    def file_filter_gen(flt: List[Tuple[str, List[str]]]):
        return ";;".join([f"{name} (" + " ".join([f"*.{ty}" for ty in ty_lst]) + ")" for name, ty_lst in flt])

    @staticmethod
    def get_open_file(parent: Optional[QWidget], title: str, base_dir: str = "./", file_filter: str = "Any (*.*)") -> Tuple[str, str]:
        file_name, selected_filter = QFileDialog().getOpenFileName(parent, title, directory=base_dir, filter=file_filter)
        return file_name, selected_filter


class LineEditWithLabel:
    def __init__(self, parent, label_name: str, read_only: bool = False, align: Qt.AlignmentFlag = Qt.AlignLeft, place_holder: str = "", text: str = ""):
        self.label = QLabel(label_name, parent)
        self.line_edit = QLineEdit(parent)
        self.line_edit.setReadOnly(read_only)
        self.line_edit.setAlignment(align)
        self.line_edit.setPlaceholderText(place_holder)
        self.line_edit.setText(text)

    def components(self):
        return self.label, self.line_edit


class ResizableMessageBox(QMessageBox):
    """ See
    https://stackoverflow.com/questions/2655354/how-to-allow-resizing-of-qmessagebox-in-pyqt4/2664019#2664019
    for details. """

    def __init__(self, *args, **kwargs):
        super(ResizableMessageBox, self).__init__(*args, **kwargs)
        self.setSizeGripEnabled(True)

    def event(self, e):
        result = QMessageBox.event(self, e)

        self.setMinimumHeight(0)
        self.setMaximumHeight(16777215)
        self.setMinimumWidth(200)
        self.setMaximumWidth(16777215)
        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        textEdit = self.findChild(QTextEdit)
        if textEdit is not None:
            textEdit.setMinimumHeight(0)
            textEdit.setMaximumHeight(16777215)
            textEdit.setMinimumWidth(200)
            textEdit.setMaximumWidth(16777215)
            textEdit.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        return result


class Messenger:
    __error_icon = QMessageBox.Critical
    __info_icon = QMessageBox.Information

    @staticmethod
    def __msg_box_init(parent: Optional[QWidget], title: str, text: str, informative_text: Optional[str], details_text: Optional[str],
                       buttons: Union[int, QMessageBox.StandardButton], default_button: Union[int, QMessageBox.StandardButton]):
        msg_box = ResizableMessageBox(parent)

        msg_box.setBaseSize(200, 100)
        msg_box.setWindowTitle(title)
        msg_box.setText(text)
        if informative_text is not None:
            msg_box.setInformativeText(informative_text)
        if details_text is not None:
            msg_box.setDetailedText(details_text)
        msg_box.setStandardButtons(buttons)
        msg_box.setDefaultButton(default_button)

        return msg_box

    @staticmethod
    def information(parent: Optional[QWidget], title: str, text: str,
                    informative_text: Optional[str] = None, details_text: Optional[str] = None,
                    buttons: Union[int, QMessageBox.StandardButton] = QMessageBox.Ok,
                    default_button: Union[int, QMessageBox.StandardButton] = QMessageBox.Ok) -> str:

        msg_box = Messenger.__msg_box_init(parent, title, text, informative_text, details_text, buttons, default_button)
        msg_box.setIcon(Messenger.__info_icon)
        msg_box.exec()
        return msg_box.clickedButton().text()

    @staticmethod
    def error(parent: Optional[QWidget], title: str, text: str,
              informative_text: Optional[str] = None, details_text: Optional[str] = None,
              buttons: Union[int, QMessageBox.StandardButton] = QMessageBox.Ok,
              default_button: Union[int, QMessageBox.StandardButton] = QMessageBox.Ok) -> str:

        msg_box = Messenger.__msg_box_init(parent, title, text, informative_text, details_text, buttons, default_button)
        msg_box.setIcon(Messenger.__error_icon)
        msg_box.exec()
        return msg_box.clickedButton().text()


class SecondaryWindow(QWidget):

    @staticmethod
    def generate_h_layout(*args):
        layout = QHBoxLayout()
        for item in args:
            layout.addWidget(item)
        return layout

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowModality(Qt.ApplicationModal)

        self.th = None

        self.c_callback: Callable = lambda: None
        self.asm_callback: Callable = lambda: None
        self.cfg_callback: Callable = lambda: None
        self.result_callback: Callable = lambda: None
        self.block_callback: Callable = lambda: None

        # Set up the UI
        self.setWindowTitle("Choose File")
        self.resize(400, 300)

        self.asm_file_label, self.asm_file_edit = LineEditWithLabel(self, label_name='ASM File').components()
        self.asm_file_btn = QtWidgets.QPushButton("browse...", self)
        self.asm_file_btn.clicked.connect(self.choose_asm_file)

        self.asm_D_label, self.asm_D_edit = LineEditWithLabel(self, label_name='ASM-D File').components()
        self.asm_D_btn = QtWidgets.QPushButton("browse...", self)
        self.asm_D_btn.clicked.connect(self.choose_asm_d_file)

        self.c_file_label, self.c_file_edit = LineEditWithLabel(self, label_name='C File', place_holder="Optional").components()
        self.c_file_btn = QtWidgets.QPushButton("browse...", self)
        self.c_file_btn.clicked.connect(self.choose_c_file)

        self.bound_file_label, self.bound_file_edit = LineEditWithLabel(self, label_name='Loop Bound').components()
        self.bound_file_btn = QtWidgets.QPushButton("browse...", self)
        self.bound_file_btn.clicked.connect(self.choose_loop_bound)

        self.fixpoint_file_label, self.fixpoint_file_edit = LineEditWithLabel(self, label_name='Fixpoint File').components()
        self.fixpoint_file_btn = QtWidgets.QPushButton("browse...", self)
        self.fixpoint_file_btn.clicked.connect(self.choose_fixpoint_input)

        self.generate_btn = QtWidgets.QPushButton(" Processing ", self)
        self.cancel_btn = QtWidgets.QPushButton(" Close ", self)
        self.generate_btn.clicked.connect(self.process_files)
        self.cancel_btn.clicked.connect(self.user_cancel)

        layout_btn = self.generate_h_layout(self.generate_btn, self.cancel_btn)
        layout_btn.addStretch()

        layout_asm = self.generate_h_layout(self.asm_file_edit, self.asm_file_btn)
        layout_asm_D = self.generate_h_layout(self.asm_D_edit, self.asm_D_btn)
        layout_c = self.generate_h_layout(self.c_file_edit, self.c_file_btn)
        layout_bound = self.generate_h_layout(self.bound_file_edit, self.bound_file_btn)
        layout_fixpoint = self.generate_h_layout(self.fixpoint_file_edit, self.fixpoint_file_btn)

        self.progress_bar = QtWidgets.QProgressBar()
        self.progress_bar.setStyleSheet("QProgressBar::chunk {background-color: skyblue;}")
        self.progress_bar.setFormat("")
        self.step_label = QLabel()
        self.update_progress_bar(0)

        layout = QVBoxLayout()
        layout.addWidget(self.asm_file_label)  # ASM
        layout.addLayout(layout_asm)
        layout.addWidget(self.asm_D_label)  # ASM_D
        layout.addLayout(layout_asm_D)
        layout.addWidget(self.c_file_label)  # C
        layout.addLayout(layout_c)
        layout.addWidget(self.bound_file_label)  # Loop bound
        layout.addLayout(layout_bound)
        layout.addWidget(self.fixpoint_file_label)  # Fixpoint Input
        layout.addLayout(layout_fixpoint)
        layout.addStretch()
        layout.addWidget(self.step_label)
        layout.addWidget(self.progress_bar)
        layout.addLayout(layout_btn)
        self.setLayout(layout)

    @staticmethod
    def change_file_extension(file_path, new_extension):
        directory, filename = os.path.split(file_path)
        basename, extension = os.path.splitext(filename)
        new_file_path = os.path.join(directory, basename + '.' + new_extension)
        return new_file_path

    def choose_asm_file(self):
        fp, ok = UserInput.get_open_file(self, title="Choose ASM file", file_filter=UserInput.file_filter_gen([("ASM File", ['asm'])]))
        if ok:
            self.asm_file_edit.setText(fp)

            if os.path.isfile((f := self.change_file_extension(fp, 'dasm'))):
                self.asm_D_edit.setText(f)
            if os.path.isfile((f := self.change_file_extension(fp, 'c'))):
                self.c_file_edit.setText(f)
            if os.path.isfile((f := self.change_file_extension(fp, 'lb'))):
                self.bound_file_edit.setText(f)
            if os.path.isfile((f := self.change_file_extension(fp, 'fp'))):
                self.fixpoint_file_edit.setText(f)

    def choose_asm_d_file(self):
        fp, ok = UserInput.get_open_file(self, title="Choose ASM-D file", file_filter=UserInput.file_filter_gen([("D-ASM File", ['dasm'])]))
        if ok:
            self.asm_D_edit.setText(fp)

    def choose_c_file(self):
        fp, ok = UserInput.get_open_file(self, title="Choose C file", file_filter=UserInput.file_filter_gen([("C Code", ['c'])]))
        if ok:
            self.c_file_edit.setText(fp)

    def choose_loop_bound(self):
        fp, ok = UserInput.get_open_file(self, title="Specify loop bound file", file_filter=UserInput.file_filter_gen([("Loop Bound", ['lb'])]))
        if ok:
            self.bound_file_edit.setText(fp)

    def choose_fixpoint_input(self):
        fp, ok = UserInput.get_open_file(self, title="Choose Fixpoint input file", file_filter=UserInput.file_filter_gen([("Fixpoint Input", ['fp'])]))
        if ok:
            self.fixpoint_file_edit.setText(fp)

    def before_running(self):
        self.asm_file_edit.setEnabled(False)
        self.c_file_edit.setEnabled(False)
        self.asm_D_edit.setEnabled(False)
        self.bound_file_edit.setEnabled(False)
        self.fixpoint_file_edit.setEnabled(False)

        self.asm_file_btn.setEnabled(False)
        self.c_file_btn.setEnabled(False)
        self.asm_D_btn.setEnabled(False)
        self.bound_file_btn.setEnabled(False)
        self.fixpoint_file_btn.setEnabled(False)

        self.generate_btn.setEnabled(False)
        self.cancel_btn.setEnabled(False)
        self.progress_bar.setStyleSheet("QProgressBar::chunk {background-color: skyblue;}")

    def after_running(self):
        self.asm_file_edit.setEnabled(True)
        self.c_file_edit.setEnabled(True)
        self.asm_D_edit.setEnabled(True)
        self.bound_file_edit.setEnabled(True)
        self.fixpoint_file_edit.setEnabled(True)

        self.asm_file_btn.setEnabled(True)
        self.c_file_btn.setEnabled(True)
        self.asm_D_btn.setEnabled(True)
        self.bound_file_btn.setEnabled(True)
        self.fixpoint_file_btn.setEnabled(True)

        self.generate_btn.setEnabled(True)
        self.cancel_btn.setEnabled(True)

    def success_running(self):
        self.after_running()
        Messenger.information(self, "Success", "Success.")
        self.close()

    def error_found(self, e):
        self.progress_bar.setStyleSheet("QProgressBar::chunk {background-color: red;}")
        self.step_label.setText('Error.')
        Messenger.error(self, "Error", "Error during analysis.", str(e), details_text=traceback.format_exc())
        self.after_running()

    def process_files(self):
        self.before_running()

        try:
            c_fp = self.c_file_edit.text()
            asm_fp = self.asm_file_edit.text()
            asm_d_fp = self.asm_D_edit.text()
            bound_fp = self.bound_file_edit.text()
            fixpoint_fp = self.fixpoint_file_edit.text()

            self.th = WorkerThread(c_file=c_fp, asm_file=asm_fp, asm_d_file=asm_d_fp, bound_file=bound_fp, fixpoint_file=fixpoint_fp)

            self.th.finished.connect(self.success_running)
            self.th.error_found.connect(self.error_found)
            self.th.progress_updated.connect(self.update_progress_bar)
            self.th.result_c_file.connect(self.c_callback)
            self.th.result_asm_file.connect(self.asm_callback)
            self.th.result_cfg_file.connect(self.cfg_callback)
            self.th.result_analysis.connect(self.result_callback)
            self.th.result_memory_block.connect(self.block_callback)

            self.th.start()

        except Exception as e:
            self.progress_bar.setStyleSheet("QProgressBar::chunk {background-color: red;}")
            self.step_label.setText('Error.')
            Messenger.error(self, "Error", "Unable to create working thread.", str(e), details_text=traceback.format_exc())

    def user_cancel(self):
        self.close()

    def update_progress_bar(self, progress, behavior=None):
        behavior = behavior if behavior is not None else "Everything Ok." if progress == 100 else "Waiting..."
        self.step_label.setText(behavior)
        self.progress_bar.setValue(progress)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setMinimumSize(QtCore.QSize(400, 400))
        self.setWindowTitle("Main Window")
        self.frameGeometry().moveCenter(QDesktopWidget().availableGeometry().center())

        # Create MDI area
        self.mdi = QMdiArea()
        self.setCentralWidget(self.mdi)

        # Create sub-windows
        self.target_code_sub = TargetCodeWindow(self, title='Target code')
        self.asm_file_sub = ASMWindow(self, title='ASM file')
        self.cfg_sub = CFGWindow(self, title='Control flow graph')
        self.result_sub = ResultTableWindow(self, title='Result')
        self.memory_block_sub = MemoryBlockWindow(self, title="Memory Block")
        # Create secondary window
        self.choose_file_sec = SecondaryWindow()

        self.choose_file_sec.c_callback = self.target_code_sub.set_c_code
        self.choose_file_sec.asm_callback = self.asm_file_sub.set_asm_code
        self.choose_file_sec.cfg_callback = self.cfg_sub.render_graph
        self.choose_file_sec.result_callback = self.result_sub.set_data
        self.choose_file_sec.block_callback = self.memory_block_sub.set_data

        # Add sub-windows to MDI area
        self.mdi.addSubWindow(self.target_code_sub)
        self.mdi.addSubWindow(self.asm_file_sub)
        self.mdi.addSubWindow(self.cfg_sub)
        self.mdi.addSubWindow(self.result_sub)
        self.mdi.addSubWindow(self.memory_block_sub)

        # Visible actions
        self.target_code_action = ActionWithMapping("Target Code", "target_code", parent=self, clickable=True)
        self.asm_file_action = ActionWithMapping("ASM file", "asm_file", parent=self, clickable=True)
        self.cfg_action = ActionWithMapping("Control flow graph", "cfg", parent=self, clickable=True)
        self.result_action = ActionWithMapping("Analysis Result", "result", parent=self, clickable=True)
        self.block_action = ActionWithMapping("Memory Block", "block", parent=self, clickable=True)

        # Call secondary window to choose file for analysis.
        self.choose_file_action = ActionWithMapping("Choose File", 'choose_file', parent=self)

        # Menubar
        menubar = self.menuBar()
        self.menubar_start = (bar := menubar.addMenu("Start"))
        bar.addActions([self.choose_file_action])
        bar.triggered[ActionWithMapping].connect(lambda: self.choose_file_sec.show())
        self.menubar_visible = (bar := menubar.addMenu("Visible"))
        bar.addActions([self.target_code_action, self.asm_file_action, self.cfg_action, self.result_action, self.block_action])
        bar.triggered[ActionWithMapping].connect(lambda: self.target_code_sub.setVisible(self.target_code_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.asm_file_sub.setVisible(self.asm_file_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.cfg_sub.setVisible(self.cfg_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.result_sub.setVisible(self.result_action.isChecked()))
        bar.triggered[ActionWithMapping].connect(lambda: self.memory_block_sub.setVisible(self.block_action.isChecked()))

    def closeEvent(self, event):
        # TODO.
        event.accept()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
