# fp = r"D:\workspace\Gitdocuments\hw-memory\benchmarks\old_benchmark\spec_example\spec2006_470.lbm\lbm_part.asm"
fp = r"D:\workspace\Gitdocuments\hw-memory\benchmarks\final_benchmark\spec_benchmark.asm"
from cache_analysis import read_segment

# fp = r"C:\Users\51777\Desktop\华为memory\test\objdump\-dmanytest.asm"

from newCFG.cfg import proc_identify
from newCFG.isa import Instruction, AddrMode
from typing import Tuple
from newCFG.read_asm import AsmFileReader, StatementType
from graphviz import Digraph
from newCFG.cfg import draw_proc, find_cycle, has_cycle, proc_draw_edges
from read_segment import segmentReader

reader = AsmFileReader(fp)

statements = list()
temp_stat = list()
for s in reader.statements:
    s: Tuple[StatementType, tuple]
    if s[0] == StatementType.Instruction:
        statements.append((s[0], Instruction(s[1])))
        temp_stat.append(Instruction(s[1]))
    elif s[0] == StatementType.SubProcedure:
        statements.append(s)

# for i in temp_stat:
#    booltemp = i.is_ls
#    if booltemp:
#        if i.ls_addr_mode == AddrMode.ImmeAft:
#            print(i.ls_reg_traget)

procs = proc_identify(statements)
for proc in procs:
    print(proc.name, proc.beg_addr.hex_str())
    if False and proc.name == 'main':
        for inst in proc.instruction:
            print(inst.addr.hex_str(), inst.opcode, inst.name, inst.operands, inst.branch_info)
        print()

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
proc_draw_edges(procs)

is_cycle = has_cycle(procs)
if is_cycle:
    c = [p.name for p in find_cycle(procs)]
    raise RuntimeError("Loop between procedures is not allowed: {}.".format(c))

g: Digraph = draw_proc(procs)
g.render(filename='procedures', directory='./output', format='svg')

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
from newCFG.cfg import CallGraph

call_graph = CallGraph(procs)

g = call_graph.draw_graph()
g.render(filename='call_graph', directory='./output', format='svg')

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
from newCFG.cfg import TCfg
import random

tcfg = TCfg(call_graph)
tcfg.build_tcfg()

tcfg_nodes = tcfg.all_nodes
tcfg_edges = tcfg.edges

g = tcfg.draw_graph()
g.render(filename='tcfg', directory='./output', format='svg')

# for node in tcfg_nodes:
#    node.set_rw_condition()
#    #print(node.name, node.base_proc.name, node.inst_range)
#    print(node.name, node.base_proc.name)
#    print("出边")
#    for i in node.outgoing_edge:
#        print(i.dst.name)
#    print("入边")
#    for i in node.incoming_edge:
#        print(i.src.name)
#
#    print()

tcfg.build_loop_hrchy()
for l in tcfg.loops:
    # print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
    # print(l.back_edge.src.name,l.back_edge.dst.name)
    l.back_edge.is_backEdge = True

# for n in tcfg.all_nodes:
#    temp = n.inside_loop.name if n.inside_loop is not None else 'None'
#    print("{} {}".format(n.name, temp))

for n in tcfg_nodes:
    n.set_rw_data()

temp_bool = True

while temp_bool:
    no_end = False

    for n in tcfg_nodes:
        n.set_rw_value()
        if not n.no_out:
            no_end = True
        temp_bool = no_end

for e in tcfg_edges:
    if e.is_backEdge:
        e.loop_value = random.randint(0, 10)
        e.edge_value = 2

for e in tcfg_edges:
    print(e.src.name, e.dst.name, e.edge_value)

# for n in tcfg_nodes:
#    print(n.name,"n的值",n.node_value)


# for e in tcfg_edges:
#    print(e.src.name,e.dst.name,e.is_backEdge)

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
from newCFG.cfg import TCfg
from newCFG.loadstore import LSProc
from newCFG.rw_condition import RWProc

lsproc = LSProc(tcfg_nodes)

lds_table = lsproc.ls_table

for i in lds_table:
    print("node", i.node.name, "指令", i.ins.tokens, "是否是SP", i.is_sp, "指令地址", i.ins.addr.val(), "访存地址",
          i.final_addr, "数据宽度", i.ins.ls_data_width, "访存类型", i.ins.ls_addr_mode, "是否加入数组", i.ins.is_data_group)

rwproc = RWProc(lds_table)

# for rwu in rwproc.rw_table:
#    print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)


# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# get_memory_access ---> cache_information.in
mem_ls = []
for i in lds_table:
    if i.is_sp is False:
        # node + address(string) + address(int) + load/store address(int) + data width(Byte=bit/8)
        mem_ls.append([i.node.name] + [i.ins.tokens[0]] + [i.ins.addr.val()] + [i.final_addr] + [int(i.ins.ls_data_width/8)] + [str(i.ins.is_data_group)])
print(mem_ls)
print(mem_ls[0][2])
# 如果AddressMode是寄存器则赋值 -1
for item in mem_ls:
    if item[5] == "True": # TODO 这里具体是不是AddrMode.Reg还需要再看
        item[4] = -1
# print(mem_ls)

mem_node = []
mem_head = []
result = {}

# 获取每个node的指令
for i in tcfg_nodes:
    # print(i.name)
    # print(i.instructions)
    # 获取cache分析所需要的node序列
    mem_node.append(i.name)
    for m in i.instructions:
        # print(m.addr.hex_str())
        # 整个asm的所有指令; 所有长度默认为4
        mem_head.append([i.name] + [m.addr.val()] + [m.addr.val()] + [4])

# print(mem_ls)
# print(mem_head)
# 判断load and store指令 如果是load/store将后面的值改为访存地址值(int)
for n in range(len(mem_ls)):
    for i in range(len(mem_head)):
        # 第一个条件是判断是否同一 node; 第二个条件判断地址是不是load/store的
        if mem_ls[n][0] == mem_head[i][0] and mem_ls[n][2] == mem_head[i][1]:
            # 将第三个元素替换为数据的访存地址
            mem_head[i][2] = mem_ls[n][3]
            # 将长度替换为load/store传过来的长度
            mem_head[i][3] = mem_ls[n][4]

# print("mem_head: ", mem_head)
# cache分析所需要的memory node信息
# print(mem_node)

# 在这里提前获得.bss & .data segment信息
# segment = segmentReader(r'C:\Users\51777\Desktop\华为memory\test\objdump\-D manytest.asm')
# segment = segmentReader(r'D:\workspace\Gitdocuments\hw-memory\benchmarks\final_benchmark\spec_benchD.asm')
segment = segmentReader(r'D:\workspace\Gitdocuments\hw-memory\benchmarks\final_benchmark\spec_benchmarkD.asm')
bss = segment.getbss()
data = segment.getdata()
# 将.bss 和 .data 合成一个 一般是 .data在前 .bss在后; 但是为了方便处理.data的最后一个数据长度,将其反过来
ALL = []
for i in range(len(bss)):
    ALL.append(bss[i])
for i in range(len(data)):
    ALL.append(data[i])
# print("ALL:", ALL)

# 处理.data的最后一个数据长度, 就是.bss段开始标志的'completed.0'地址
ALL[-1][3] = ALL[0][2]
print("ALL_Last:", ALL)

# 直接把.bss/.data中全局变量长度 替换到mem_head里,更方便
for i in ALL:
    for item in mem_head:
        # 这里item[3]如果是寄存器 比如这里用-1记录; 提前判断:如果是寄存器,则用tail-head得到的长度替换item[3]
        # if i[2] == item[2] and item[3] == -1:
        if i[2] <= item[2] and item[2] < i[3] and item[3] == -1:
            item[3] = i[3]-i[2]
# print("mem_head222: ", mem_head)

# 对于同一node 如果前后地址一致，则append tuple(start,end); 前后地址不一致说明是l/s指令，则append tuple(start,start), tuple(end,end)
# 这里的tuple(end,end) 应该是tuple(end,end+len) len单独一个list传进来，根据指令长度决定，如果是寄存器则通过寻找segement确定 先默认长度为4
for item in mem_head:
    key = item[0]
    if key not in result:
        result[key] = []
    # 这边mem_head中会从（mem_ls会从load and store那里获取长度属性）然后将其添加到mem_ls 变成类似 ['n0', 1920, 1920, 4] 4即为长度 然后直接加长度即可 item[2] +item[3]
    if item[1] == item[2]:
        # 指令默认为4
        result[key].append((item[1], item[2]+4))
    else:
        # 指令默认为4
        result[key].append((item[1], item[1]+4))
        # load and store加长度
        result[key].append((item[2], item[2]+item[3]))

        # DELETE_START
        # 找到的segment传过来的LIST是 ['0000000000420028', 'i', 4325416, 4325420] ---> if item[3] == -1 and item[2] == LIST[][2] ---> result[key].append((item[2], LSIT[][3])) 将尾部加进来就行
        # 需要debug 这里不能range(len(ALL)) 不然会重复添加多次else语句 但其实一次就行
        # for i in range(len(ALL)):
        #     if item[3] == -1 and item[2] == ALL[i][2]:
        #         result[key].append((item[2], ALL[i][3]))
        #     # 去掉else也不对, 因为会重新计算一次这个数据 ---> 加一个if判断 ---> 还是错的
        #     elif item[3] != -1 and item[2] != ALL[i][2]:
        #         result[key].append((item[2], item[2]+item[3]))
        # DELETE_END

for key in result:
    result[key] = tuple(result[key])
# cache分析所需要memory trace信息
# print(result)

mem_edge = []
for i in tcfg_edges:
    # print(i.src.name, i.dst.name)
    mem_edge.append((i.src.name, i.dst.name))

# print test information of cache analysis
# cache分析所需要的边信息 node--->node 有向边
print(mem_edge)
# cache分析所需要的memory node信息
print(mem_node)
# cache分析所需要memory trace信息
print(result)

'''
    将memory trace按照in格式打印到文件里 方便分析
        用 -> 匹配edge信息
        用 [] 匹配access
        用 : 匹配cache信息配置
'''
max_width = max(len(key) for key in result.keys()) # 定义最宽字符 为了后面做准备
with open('new_cache/input/cache_information.in', 'w') as f:
    # f.write(str(loop_list)) # 不需要将loop_information写入到cache_information中, 不需要
    f.write("\nentry: n0   ;\n\n")
    for node in mem_node:
        f.write(node + ';' + '\n')
    for edge_in, edge_out in mem_edge:
        f.write(f"{edge_in} -> {edge_out}" + ';' + '\n')
    for key, values in result.items():
        f.write(f"[{key:<{max_width}}] ")
        for i, (start, end) in enumerate(values):
            f.write(f"{start}-{end}")
            if i != len(values) - 1: # 如果不是最后一个元组，则加上逗号
                f.write(", ")
        f.write(";\n")
    # TODO 考虑cache基本信息从哪里得到? e.g.,cache信息从一个config读入; 暂时直接指定
    f.write("cache_offset: 6     ;\ncache_set_index: 8  ;\ncache_assoc: 4      ;")

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# cache_risk_level_analysis ---> TODO LIST[[loop*, risk*], ...]

# loop_information ---> Dict{}: loop_list{'loop.name':[node_set], ...}
loop_list = {}
for loop in tcfg.loops:
    # print(loop.name)
    key = loop.name
    if key not in result:
        loop_list[key] = []

    for n in loop.all_nodes:
        loop_list[key].append(n.name)
print(loop_list)

# 根据loop获取该loop的memory access
loop_memory_access = {key: [v for k, v in result.items() if k in values] for key, values in loop_list.items()}
loop_memory_access = {key: tuple(item for sublist in value for item in sublist) for key, value in loop_memory_access.items()}
# 这里验证以lbm.asm为例, 只有n0和n14访存了更大的page, 但是三个loop中没有包含这两个node的情况, 所以生成的是对的
print(loop_memory_access)


# 根据所得到的loop_memory_access来具体划分每个loop的memory pages
page_size = 4096

page_loop_access = {}  # 用于保存页面序列的字典

# 遍历所有层级的地址序列
for level, address_list in loop_memory_access.items():
    visited_pages = set()  # 用来保存已经访问过的内存页面
    page_list = []  # 用于保存属于当前地址序列的内存页面

    # 遍历地址序列中的每一个地址并转换为页面编号
    for addr_start, addr_end in address_list:
        page_start, page_end = (addr_start // page_size) * page_size, ((addr_end - 1) // page_size + 1) * page_size  # 地址所在的内存页面范围
        if page_start in visited_pages:  # 如果该页面已经在当前地址序列的处理过程中，直接跳过
            continue
        visited_pages.add(page_start)  # 将该页面标记为已处理
        page_list.append((page_start, page_end))

    page_loop_access[level] = tuple(page_list)  # 添加当前层级的页面列表到结果字典中

print(page_loop_access)




# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# page_information
# 根据memory access寻找访问的page
# 内存页大小（单位：字节_B）
# page_size = 4096
# # 保存所有访问的内存地址
# all_pages = []
# # 遍历所有的访存地址
# for program, program_accesses in result.items():
#     for access in program_accesses:
#         # 计算当前访问的页面号
#         page_num = access[0] // page_size
#         # 计算页面的起始地址和结束地址
#         page_start = page_num * page_size
#         page_end = (page_num + 1) * page_size
#         # 将页面的起始地址和结束地址保存到all_addresses列表中
#         all_pages.append((page_start, page_end))
#
# # 对内存地址进行排序，并合并相同的页面
# all_pages = sorted(set(all_pages))
#
# # 打印所有的内存页面
# print(all_pages)
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# cache analysis
from cache_analysis.new_cache.fixponit import *
import sys

print(sys.version_info)

# f = r"D:\workspace\Gitdocuments\hw-memory\cache_analysis\new_cache\input\example-0.in"
f = r"D:\workspace\Gitdocuments\hw-memory\cache_analysis\new_cache\input\cache_information.in"
config, graph, user_kwargs = read_from_file(f)

# print("==== Cache Config ====")
# print("Set index length:", config.set_index_len)
# print("Cache offset:", config.offset_len)
# print("Cache association:", config.assoc)
#
# print("\n==== TCFG ====")
# for node in graph.all_nodes:
#     print(node.ident,
#           "access", [b.__str__() for b in node.access_blocks],
#           "incoming", [n.ident for n in node.incoming],
#           "outgoing", [n.ident for n in node.outgoing])

is_fixpoint = fixpoint(config, graph, 'must', **user_kwargs)  # Switch to `may` or `persistent`.
print(is_fixpoint, graph.it_number)



# 最终结果--------------------------------------------------------------------------------------------------------------------------------------------
graph_must, graph_may, graph_pers = deepcopy(graph), deepcopy(graph), deepcopy(graph)

fixpoint(config, graph_must, 'must', **user_kwargs)
fixpoint(config, graph_may, 'may', **user_kwargs)
fixpoint(config, graph_pers, 'persistent', **user_kwargs)

mb_must_hit = list()
mb_persistent = list()
mb_must_miss = list()
mb_uc = list()
loop_bound = 1
END = list()
cache_risk = {}
for loop in loop_list.values():
    loop_name = [key for key, value in loop_list.items() if value == loop]
    page_range = page_loop_access.get(loop_name[0])
    for tup in page_range:
        for n_must, n_may, n_pers in zip(graph_must.all_nodes, graph_may.all_nodes, graph_pers.all_nodes):
            if n_must.ident not in loop:
                continue
            for rlt_must, rlt_may, rlt_pers in zip(n_must.analysis_result(), n_may.analysis_result(), n_pers.analysis_result()):
                # print(rlt_must[0])
                for mb, must_f, may_f, pers_f in zip(rlt_must[1], rlt_must[2], rlt_may[2], rlt_pers[2]):
                    # print(mb, must_f, may_f, pers_f)
                    if tup[0] <= config.block2address(mb) < tup[1]:
                        if must_f:
                            mb_must_hit.append(mb)
                        else:
                            if pers_f:
                                mb_persistent.append(mb)
                            else:
                                if not may_f:
                                    mb_must_miss.append(mb)
                                else:
                                    mb_uc.append(mb)

        # print(loop_name, "--->", tup, "mb_must_hit: ", mb_must_hit, len(mb_must_hit))
        # print(loop_name, "--->", tup, "mb_persistent: ", mb_persistent, len(mb_persistent))
        # print(loop_name, "--->", tup, "mb_must_miss: ", mb_must_miss, len(mb_must_miss))
        # print(loop_name, "--->", tup, "mb_uc: ", mb_uc, len(mb_uc))
        # # print(loop_name, "ratio--->")
        # # END.append(loop_name + [int(tup[0]/4096)] +["must_hit: ", len(mb_must_hit), "persistent: ", len(mb_persistent), "must_miss: ", len(mb_must_miss), "uc: ", len(mb_uc)])
        # # loop_bound默认是1的计算结果
        try:
            END.append([tuple(loop_name), int(tup[0]/4096), float( (float(len(mb_must_hit)*loop_bound) + float(len(mb_persistent)*(loop_bound-1)) + float(0.5*len(mb_uc)*loop_bound)) / (float(len(mb_persistent)*1) + float(len(mb_must_miss)*loop_bound) + float(0.5*len(mb_uc)*loop_bound)) ) ])
            mb_must_hit = list()
            mb_persistent = list()
            mb_must_miss = list()
            mb_uc = list()
        except ZeroDivisionError as e:
            END.append([loop_name[0], int(tup[0] / 4096), -1])
print(END)
#%%
