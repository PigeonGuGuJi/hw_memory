import os.path
import re
from enum import Enum, auto

class MixStatementType(Enum):

    asm = auto()
    codeline = auto()
    code = auto()


class AsmCodeReader:

    # 判断是否是反应codeline的文本
    restr_codeline = r"^/.*$"
    # 判断是否是汇编文件
    restr_asmstat = r"\s*([0-9a-fA-F]*):\s*"
    # 判断特殊情况
    restr_special_condition = r"^\\\\"

    def __init__(self, file_path: str):

        self.__fpath = file_path
        self.__statements = list()

        if not (os.path.isfile(self.__fpath)):
            raise FileNotFoundError("Unexpected file path {}.".format(self.__fpath))

        statements: list
        with open(self.__fpath, 'rt', encoding='utf-8') as fp:
            statements = [s.strip() for s in fp.readlines() if len(s.strip()) != 0]
            
        
     

        re_codeline = re.compile(self.restr_codeline)
        re_asmstat = re.compile(self.restr_asmstat)
        re_special_condition = re.compile(self.restr_special_condition)
        
        for s in statements:

            is_codeline = re.match(re_codeline, s)
            is_asmstat = re.match(re_asmstat, s)
            is__special_condition = re.match(re_special_condition, s)

            if is_codeline:
                self.__statements.append((MixStatementType.codeline, s))
                # print((MixStatementType.codeline, is_codeline.groups()))
            elif is_asmstat:
                self.__statements.append((MixStatementType.asm, is_asmstat.groups()))

        self.__statements = tuple(self.__statements)

    @property
    def fpath(self):
        return self.__fpath

    @property
    def statements(self):
        return self.__statements
