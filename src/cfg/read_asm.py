# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 19:21
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : read_asm.py
@Description: 
"""
import os.path
import re
from enum import Enum, auto


class StatementType(Enum):

    Instruction = auto()
    SubProcedure = auto()


class AsmFileReader:

    # 操作数被合称一整块处理了
    restr_inst = r"^\s*([0-9a-fA-F]*):\s*([00-9a-fA-F]{8})\s*([A-Za-z0-9]+)(?:\.([A-Za-z0-9]+))?\s*(.*?)(?://.*)?$"
    # 用是否跳转到一个label判断是否是subproc
    restr_subproc = r"^\s*([0-9a-fA-F]{16})\s*<(.*?)>:\s*$"

    def __init__(self, file_path: str):

        self.__fpath = file_path
        self.__statements = list()

        if not (os.path.isfile(self.__fpath)):
            raise FileNotFoundError("Unexpected file path {}.".format(self.__fpath))

        statements: list
        with open(self.__fpath, 'rt', encoding='utf-8') as fp:
            statements = [s.strip() for s in fp.readlines() if len(s.strip()) != 0]

        re_inst = re.compile(self.restr_inst)
        re_subproc = re.compile(self.restr_subproc)
        
        for s in statements:

            is_instruction = re.match(re_inst, s)
            is_subproc = re.match(re_subproc, s)

            if is_instruction:
                self.__statements.append((StatementType.Instruction, is_instruction.groups()))
            elif is_subproc:
                self.__statements.append((StatementType.SubProcedure, is_subproc.groups()))

        self.__statements = tuple(self.__statements)

    @property
    def fpath(self):
        return self.__fpath

    @property
    def statements(self):
        return self.__statements
