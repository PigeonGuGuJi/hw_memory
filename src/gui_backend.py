# -*- coding: utf-8 -*-
"""
@Time       : 2023/4/6 17:34
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : gui_backend.py
@Description: 
"""
import os
from typing import Tuple

from PyQt5.QtCore import QThread, pyqtSignal

from cache_analysis.cache_risk_level import CacheRisk
from cache_analysis.new_cache.fixponit import CacheConfig, FixpointGraph
from cache_analysis.read_segment import segmentReader
from cfg.cfg import CallGraph, TCfg, find_cycle, has_cycle, proc_draw_edges, proc_identify
from hotness.heat_analysis import NewLoopHotnessAnalysis, loop_heat
from institpr.isa import Instruction
from synpar.read_asm import AsmFileReader, StatementType
from rw_analysis.rw_core import loadstore_Obj


class WorkerThread(QThread):

    progress_updated = pyqtSignal(int, str)
    error_found = pyqtSignal(Exception)
    finished = pyqtSignal()

    result_c_file = pyqtSignal(str)
    result_asm_file = pyqtSignal(str)
    result_cfg_file = pyqtSignal(str)
    result_analysis = pyqtSignal(list, dict)
    result_memory_block = pyqtSignal(dict)

    def __init__(self, c_file, asm_file, asm_d_file, bound_file, fixpoint_file):
        super().__init__()
        self.c_file = c_file
        self.asm_file = asm_file
        self.asm_d_file = asm_d_file
        self.bound_file = bound_file
        self.fixpoint_file = fixpoint_file

        self.tcfg = None
        self.lsproc = None
        self.ls_loop_info = None
        self.hotness_dict = None
        self.cache_dict = None

        self.config = None
        self.graph = None
        self.graph_pers = None
        self.graph_may = None
        self.graph_must = None

    def check_validation(self):
        if not os.path.isfile(self.asm_file):
            raise FileNotFoundError(f"Cannot find target asm file {self.asm_file}.")
        if not os.path.isfile(self.asm_d_file):
            raise FileNotFoundError(f"Cannot find target asm-D file {self.asm_d_file}.")
        if not os.path.isfile(self.bound_file):
            raise FileNotFoundError(f"Cannot find loop bound file {self.bound_file}.")
        if not os.path.isfile(self.fixpoint_file):
            raise FileNotFoundError(f"Cannot find fixpoint input {self.fixpoint_file}.")

    def read_and_show_file(self):
        if self.c_file:
            with open(self.c_file, 'r', encoding='utf-8') as f:
                c_text = f.read()
            self.result_c_file.emit(c_text)
        with open(self.asm_file, 'r', encoding='utf-8') as f:
            asm_text = f.read()
        self.result_asm_file.emit(asm_text)

    def frontend(self):
        reader = AsmFileReader(self.asm_file)
        statements = list()
        for s in reader.statements:
            s: Tuple[StatementType, tuple]
            if s[0] == StatementType.Instruction:
                statements.append((s[0], Instruction(s[1])))
            elif s[0] == StatementType.SubProcedure:
                statements.append(s)

        procs = proc_identify(statements)
        proc_draw_edges(procs)
        is_cycle = has_cycle(procs)
        if is_cycle:
            c = [p.name for p in find_cycle(procs)]
            raise RuntimeError("Loop between procedures is not allowed: {}.".format(c))
        call_graph = CallGraph(procs)
        self.tcfg = TCfg(call_graph)
        self.tcfg.build_tcfg()

        g = self.tcfg.draw_graph()
        target = g.render(filename='tcfg', directory='./output', format='svg')
        self.result_cfg_file.emit(os.path.abspath(target).replace('\\', '/'))

        self.tcfg.build_loop_hrchy()
        self.tcfg.add_loop_bound(self.bound_file)

    def ls_analysis(self):
        seg_fp = r'./benchmarks/final_benchmark/spec_benchmarkD.asm'
        segreader = segmentReader(seg_fp)
        lds_obj = loadstore_Obj(segreader, self.tcfg)
        self.lsproc = lds_obj.lsproc
        self.ls_loop_info = lds_obj.loop_info

    def cache_analysis(self):
        cache_test = CacheRisk(self.tcfg, self.lsproc, self.asm_d_file, self.fixpoint_file)
        cache_list = cache_test.test()
        self.cache_dict = {k: list() for k in set([k for k, _, _ in cache_list])}
        for k, p, r in cache_list:
            self.cache_dict[k].append((p, r))
        for k in self.cache_dict.keys():
            self.cache_dict[k] = {_k: _v for _k, _v in self.cache_dict[k]}

        self.config: CacheConfig = cache_test.config
        self.graph: FixpointGraph = cache_test.graph
        self.graph_must: FixpointGraph = cache_test.graph_must
        self.graph_may: FixpointGraph = cache_test.graph_may
        self.graph_pers: FixpointGraph = cache_test.graph_pers

    def hotness_analysis(self):
        hotness_analysis = NewLoopHotnessAnalysis(self.config, self.tcfg, self.graph_must, self.graph_may, self.graph_pers)
        self.hotness_dict = hotness_analysis.run_loop_level()

    def memory_block_analysis(self):
        self.graph: FixpointGraph
        rlt = dict()
        for node in self.graph.all_nodes:
            rlt[node.ident] = [(r, mbs) for r, mbs, _ in node.analysis_result()]
        rlt = {k: "\n".join([f"({hex(r[0])}, {hex(r[1])})" +
                             "".join(("\n" if idx % 3 == 0 else " ") + str(mb) for idx, mb in enumerate(mbs)) for r, mbs in v])
               for k, v in rlt.items()}
        self.result_memory_block.emit(rlt)

    def final_analysis(self):
        loop_keys = list(self.ls_loop_info.keys())
        rlt_dict = dict()
        for lp_k in loop_keys:
            pg_rlt_list = list()
            lp_ls_dict, lp_heat_dict, lp_cache_dict = self.ls_loop_info[lp_k], self.hotness_dict[lp_k], self.cache_dict[lp_k]
            page_set = set(lp_ls_dict.keys()).union(set(lp_heat_dict.keys())).union(lp_cache_dict.keys())
            for pg in page_set:
                ls_val = str(lp_ls_dict.get(pg, None))
                heat_val = str(lp_heat_dict.get(pg, None))
                cache_val = str(lp_cache_dict.get(pg, None))
                pg_rlt_list.append((str(pg), ls_val, heat_val, cache_val))
            rlt_dict[lp_k] = pg_rlt_list
        self.result_analysis.emit(loop_keys, rlt_dict)

    def run(self):
        try:
            self.progress_updated.emit(0, "Start analysis...")
            self.check_validation()
            self.progress_updated.emit(5, "Read c and asm file...")
            self.read_and_show_file()
            self.progress_updated.emit(15, "Do Front-end analysis...")
            self.frontend()
            self.progress_updated.emit(30, "Do load/store analysis...")
            self.ls_analysis()
            self.progress_updated.emit(30, "Do cache analysis...")
            self.cache_analysis()
            self.progress_updated.emit(70, "Do hotness analysis...")
            self.hotness_analysis()
            self.progress_updated.emit(80, "Do memory block analysis...")
            self.memory_block_analysis()
            self.progress_updated.emit(90, "Almost done...")
            self.final_analysis()
            self.progress_updated.emit(100, "Finished.")
        except Exception as e:
            self.error_found.emit(e)
            return
        else:
            self.finished.emit()
