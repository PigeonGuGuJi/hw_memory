from collections import defaultdict
from copy import deepcopy
from typing import List, Tuple

from cache_analysis.new_cache.fixponit import CacheConfig, FixpointGraph, fixpoint, read_from_file
from cache_analysis.read_segment import segmentReader
from cfg.cfg import CallGraph, TCfg, TCfgLoopHrchy, TCfgNode, proc_draw_edges, proc_identify
from cfg.isa import Instruction
from cfg.read_asm import AsmFileReader, StatementType


class NewHotnessAllAnalysis:
    def __init__(self, config: CacheConfig, tcfg: TCfg, graph_must: FixpointGraph, graph_may: FixpointGraph, graph_pers: FixpointGraph):
        self.config = config
        self.tcfg = tcfg
        self.graph_must = graph_must
        self.graph_may = graph_may
        self.graph_pers = graph_pers

        self.must_rlt_map = {n.ident: n.analysis_result() for n in self.graph_must.all_nodes}
        self.may_rlt_map = {n.ident: n.analysis_result() for n in self.graph_may.all_nodes}
        self.pers_rlt_map = {n.ident: n.analysis_result() for n in self.graph_pers.all_nodes}

    def run(self):
        hotness_rlt = dict()
        for node in self.tcfg.all_nodes:
            loop = node.inside_loop
            loop_bound = 1 if loop is None else loop.bound
            inst_range = tuple([r.val() for r in node.inst_range])
            rlt = [(r, mbs, must_rlt, may_rlt, pers_rlt)
                   for (r, mbs, must_rlt), (_, _, may_rlt), (_, _, pers_rlt) in
                   zip(self.must_rlt_map[node.name], self.may_rlt_map[node.name], self.pers_rlt_map[node.name])]
            idx, idx_limit = 0, len(rlt)
            while idx < idx_limit:
                in_one_inst = [rlt[idx]]
                idx += 1
                while idx < idx_limit and ((inst_range[0] > rlt[idx][0][0]) or (rlt[idx][0][0] > inst_range[1])):
                    in_one_inst.append(rlt[idx])
                    idx += 1
                page_rlt = defaultdict(list)
                for line in in_one_inst:
                    for mb, must, may, pers in zip(*line[1:]):
                        in_page = self.config.block2address(mb) // 4096
                        page_rlt[in_page].append((must, may, pers))
                for page, results in page_rlt.items():
                    if any(rlt == (False, False, False) for rlt in results):
                        hotness_rlt[page] = hotness_rlt.get(page, 0) + loop_bound
                    elif any(rlt == (False, True, False) for rlt in results):
                        hotness_rlt[page] = hotness_rlt.get(page, 0) + loop_bound
                    else:
                        ps_count = [rlt == (False, True, True) for rlt in results]
                        if len(ps_count) > 0:
                            hotness_rlt[page] = hotness_rlt.get(page, 0) + len(ps_count)
        return hotness_rlt


class NewLoopHotnessAnalysis:
    def __init__(self, config: CacheConfig, tcfg: TCfg, graph_must: FixpointGraph, graph_may: FixpointGraph, graph_pers: FixpointGraph):
        self.config = config
        self.tcfg = tcfg
        self.graph_must = graph_must
        self.graph_may = graph_may
        self.graph_pers = graph_pers

    def do_analysis_for_loop(self, considered_nodes: List[TCfgNode], loop_bound: int):
        page_dict = dict()

        must_rlt_map = {n.ident: n.analysis_result() for n in self.graph_must.all_nodes}
        may_rlt_map = {n.ident: n.analysis_result() for n in self.graph_may.all_nodes}
        pers_rlt_map = {n.ident: n.analysis_result() for n in self.graph_pers.all_nodes}

        for node in considered_nodes:
            inst_range = tuple([r.val() for r in node.inst_range])
            rlt = [(r, mbs, must_rlt, may_rlt, pers_rlt)
                   for (r, mbs, must_rlt), (_, _, may_rlt), (_, _, pers_rlt) in zip(must_rlt_map[node.name], may_rlt_map[node.name], pers_rlt_map[node.name])]
            idx, idx_limit = 0, len(rlt)
            while idx < idx_limit:
                in_one_inst = [rlt[idx]]
                idx += 1
                while idx < idx_limit and ((inst_range[0] > rlt[idx][0][0]) or (rlt[idx][0][0] > inst_range[1])):
                    in_one_inst.append(rlt[idx])
                    idx += 1
                page_rlt = defaultdict(list)
                for line in in_one_inst:
                    for mb, must, may, pers in zip(*line[1:]):
                        in_page = self.config.block2address(mb) // 4096
                        page_rlt[in_page].append((must, may, pers))
                for page, results in page_rlt.items():
                    if any(rlt == (False, False, False) for rlt in results):
                        page_dict[page] = page_dict.get(page, 0) + loop_bound
                    elif any(rlt == (False, True, False) for rlt in results):
                        page_dict[page] = page_dict.get(page, 0) + loop_bound
                    else:
                        ps_count = [rlt == (False, True, True) for rlt in results]
                        if len(ps_count) > 0:
                            page_dict[page] = page_dict.get(page, 0) + len(ps_count)

        return page_dict

    def run_loop_level(self):
        hotness_rlt = dict()
        for loop in self.tcfg.loops:
            rlt = self.do_analysis_for_loop(loop.all_nodes, loop.bound)
            hotness_rlt[loop.name] = rlt
        return hotness_rlt


# if __name__ == '__main__':
#
#     asm_file = r'D:\workspace\hw-memory\inputs\spec_benchmark.asm'
#     cache_file = r'D:\workspace\hw-memory\inputs\spec_benchmark.fp'
#     bound_file = r'D:\workspace\hw-memory\inputs\spec_benchmark.lb'
#
#     reader = AsmFileReader(asm_file)
#     statements = list()
#     for s in reader.statements:
#         s: Tuple[StatementType, tuple]
#         if s[0] == StatementType.Instruction:
#             statements.append((s[0], Instruction(s[1])))
#         elif s[0] == StatementType.SubProcedure:
#             statements.append(s)
#
#     procs = proc_identify(statements)
#     proc_draw_edges(procs)
#     call_graph = CallGraph(procs)
#     tcfg = TCfg(call_graph)
#     tcfg.build_tcfg()
#
#     tcfg.build_loop_hrchy()
#     tcfg.add_loop_bound(bound_file)
#
#     config, graph, user_kwargs = read_from_file(cache_file)
#     graph_must, graph_may, graph_pers = deepcopy(graph), deepcopy(graph), deepcopy(graph)
#
#     fixpoint(config, graph_must, 'must', **user_kwargs)
#     fixpoint(config, graph_may, 'may', **user_kwargs)
#     fixpoint(config, graph_pers, 'persistent', **user_kwargs)
#
#     # hotness_analysis = NewLoopHotnessAnalysis(config, tcfg, graph_must, graph_may, graph_pers)
#     # rlt = hotness_analysis.run_loop_level()
#     hotness_analysis = NewHotnessAllAnalysis(config, tcfg, graph_must, graph_may, graph_pers)
#     rlt = hotness_analysis.run()
#     rlt = list(sorted([(page_num, val) for page_num, val in rlt.items()], key=lambda x: x[0]))
#     rlt_len = len(rlt)
#     for page_num, val in rlt:
#         print(page_num, val)


class loop_heat:
    def __init__(self, TCFG, LSProc, filepath) -> None:
        self.lsproc = LSProc
        self.lds_table = self.lsproc.ls_table
        self.bread = segmentReader(filepath)
        self.D = self.bread.getbss() + self.bread.getdata()
        self.tcfg = TCFG
        self.addr_bool = {i.final_addr: i.ins.is_data_group for i in self.lds_table}
        self.addr_length = {i.final_addr: i.ins.ls_data_width for i in self.lds_table}
        self.page_size = 4096
        ###以下变量用来承接结果
        self.heat_result = list()
        self.lobounds = dict()

    def find_range(self, addr: int):
        for a in self.D:
            if addr >= a[2] and addr < a[3]:
                return a[2], a[3]

            
    #test             
    def loop_heat_analysis(self):
        self.D[-1][3] = self.D[0][2]
        for l in self.tcfg.loops:
            # print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
        for n in self.tcfg.all_nodes:
            temp = n.inside_loop.name if n.inside_loop is not None else 'None'
            # print("{} {}".format(n.name, temp))
        # 将对应的指令添加到node的热度信息表中
        for i in self.lds_table:
            if i.ins.name[0:1] == "l" and i.is_sp == False:
                # print(i.ins.tokens)
                i.node.loadlist.append((i.ins, i.final_addr))
            # elif i.ins.name[0:1] == "l" and i.ins.is_data_group == True:
            #     pass
            elif i.ins.name[0:1] == "s" and i.is_sp == False:
                i.node.storelist.append((i.ins, i.final_addr))
            # print(i.node.name,i.node.loadlist,i.node.storelist)

        for node in self.tcfg.all_nodes:
            for i in node.loadlist:
                if self.addr_bool[i[1]] == False:
                    node.heat_ld_result[i[1], i[1] + int(self.addr_length[i[1]] / 8)] = 0
                elif self.addr_bool[i[1]] == True:
                    a, b = self.find_range(i[1])
                    node.heat_ld_result[a, b] = 0
            for i in node.loadlist:
                if self.addr_bool[i[1]] == False:
                    node.heat_ld_result[i[1], i[1] + int(self.addr_length[i[1]] / 8)] += 1
                elif self.addr_bool[i[1]] == True:
                    a, b = self.find_range(i[1])
                    node.heat_ld_result[a, b] += 1
            for i in node.storelist:
                if self.addr_bool[i[1]] == False:
                    node.heat_st_result[i[1], i[1] + int(self.addr_length[i[1]] / 8)] = 0
                elif self.addr_bool[i[1]] == True:
                    a, b = self.find_range(i[1])
                    node.heat_st_result[a, b] = 0
            for i in node.storelist:
                if self.addr_bool[i[1]] == False:
                    node.heat_st_result[i[1], i[1] + int(self.addr_length[i[1]] / 8)] += 1
                elif self.addr_bool[i[1]] == True:
                    a, b = self.find_range(i[1])
                    node.heat_st_result[a, b] += 1
            # print(node.name,'####',node.heat_ld_result,'######',node.heat_st_result)

        for l in self.tcfg.loops:
            # print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
            for j in l.all_nodes:
                # print(j.name,j.heat_ld_result,j.heat_st_result)
                for key, value in j.heat_ld_result.items():
                    if key in l.loop_ld_heat:
                        l.loop_ld_heat[key] += value
                    else:
                        l.loop_ld_heat[key] = value
                for key, value in j.heat_st_result.items():
                    if key in l.loop_st_heat:
                        l.loop_st_heat[key] += value
                    else:
                        l.loop_st_heat[key] = value
        for l in self.tcfg.loops:  # 这里我要把st和sd的合起来，统计一个整体的lds结果
            print(l.name, 'ld_heat_analysis', l.loop_ld_heat, 'st_heat_analysis', l.loop_st_heat)
        for l in self.tcfg.loops:  # 这里我要把st和sd的合起来，统计一个整体的lds结果
            # print(l.name)
            for key, value in l.loop_ld_heat.items():
                a = self.find_page(key[0], key[1], value)
                for i in a:
                    if i[0] not in l.page_heat_result:
                        l.page_heat_result[i[0]] = i[1]
                    else:
                        l.page_heat_result[i[0]] += i[1]
            for key, value in l.loop_st_heat.items():
                b = self.find_page(key[0], key[1], value)
                for i in b:
                    if i[0] not in l.page_heat_result:
                        l.page_heat_result[i[0]] = i[1]
                    else:
                        l.page_heat_result[i[0]] += i[1]
            self.heat_result.append([l.name] + [l.page_heat_result])
        print(self.heat_result)
        for l in self.tcfg.loops:
            self.lobounds[l.name] = l.bound
        for l in self.heat_result:
            for key in l[1].keys():
                l[1][key] = l[1][key] * self.lobounds[l[0]]

    def find_page(self, pagestart, pageend, figure):  # 这个函数用来确认这个range访问了哪个页面
        temp = list()
        if pagestart // self.page_size == pageend // self.page_size:
            temp.append([pagestart // self.page_size, figure])
        else:
            aaa = pagestart // self.page_size
            bbb = ((pageend - 1) // self.page_size) + 1
            for i in range(aaa, bbb):
                temp.append([i, figure])
        return temp

    def do_it(self):
        print(self.D)
        # for i in self.lds_table:
        #     print(i.node.name,"指令",i.ins.tokens,"是否是SP",i.is_sp,"指令地址",i.ins.addr.val(),"访存地址",i.final_addr,"数据宽度",i.ins.ls_data_width,"是否是加入一个数组",i.ins.is_data_group)
        self.loop_heat_analysis()
        return self.heat_result
