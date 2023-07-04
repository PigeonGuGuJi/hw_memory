# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 18:55
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : cfg.py
@Description: 
"""
import types
from collections import deque
from enum import Enum, auto
from typing import Dict, List, Optional, Sequence, Set, Tuple

from graphviz import Digraph
from tabulate import tabulate

from institpr.isa import Address, Instruction
from synpar.read_asm import StatementType


class Procedure:
    def __init__(self, name: str, beg_addr: Address, instructions: list):
        self.__name = name
        self.__beg_addr = beg_addr
        self.__instructions = tuple(instructions)

        self.__is_plt = "@plt" in self.__name

        self.incoming_proc: Set[Procedure] = set()
        self.outgoing_proc: Set[Procedure] = set()

    @property
    def name(self):
        """ Return the name/label of procedure. """
        return self.__name

    @property
    def is_plt(self):
        return self.__is_plt

    @property
    def beg_addr(self):
        """ Return the beginning address of procedure. The returned is an instance of type ``Address``. """
        return self.__beg_addr

    @property
    def instruction(self) -> Tuple[Instruction]:
        """ Return a tuple containing all instructions of the procedure in order. Modifications to it is illegal. """
        return self.__instructions


class ProcedureNetwork:

    @staticmethod
    def __parser_from_asm_reader(asm_statements: list):
        statements = list()
        for s in asm_statements:
            s: Tuple[StatementType, tuple]
            if s[0] == StatementType.Instruction:
                statements.append((s[0], Instruction(s[1])))
            elif s[0] == StatementType.SubProcedure:
                statements.append(s)
        return statements

    @staticmethod
    def __proc_identify(statements: list):
        all_proc: List[Procedure] = list()

        proc_name, proc_addr, proc_inst = None, None, list()
        for s in statements:
            s: Tuple[StatementType, tuple]
            if s[0] == StatementType.Instruction:
                proc_inst.append(s[1])
            elif s[0] == StatementType.SubProcedure:
                if proc_name is not None and proc_addr is not None:
                    all_proc.append(Procedure(proc_name, proc_addr, proc_inst))
                proc_addr, proc_name = Address(s[1][0]), s[1][1]
                proc_inst.clear()
        else:
            if proc_name is not None and proc_addr is not None:
                all_proc.append(Procedure(proc_name, proc_addr, proc_inst))

        return all_proc

    def __find_cycle(self) -> Optional[List[Procedure]]:
        def dfs(proc, visited_proc, path):
            visited_proc.add(proc)
            path.append(proc)
            for to_p in proc.outgoing_proc:
                if to_p in path:
                    return path[path.index(to_p):]
                elif to_p not in visited_proc:
                    f_cycle = dfs(to_p, visited_proc, path)
                    if f_cycle:
                        return f_cycle
            path.pop()
            return None

        cycle = None
        visited = set()
        for p in self.__procedures:
            if p not in visited:
                cycle = dfs(p, visited, [])
                if cycle:
                    break
        return cycle

    def __proc_draw_edges(self):
        """
        This function is used to build the call graph of the procedures.
        """
        for proc in self.__procedures:
            proc.incoming_proc.clear()
            proc.outgoing_proc.clear()

        for proc in self.__proc_name2instance.values():
            instructions = proc.instruction
            for inst in instructions:
                b, _, label, _, _ = inst.branch_info
                if b and (label != proc.name):
                    proc.outgoing_proc.add(self.__proc_name2instance[label])
                    self.__proc_name2instance[label].incoming_proc.add(proc)

    def __init__(self, asm_statements: list):
        statements = self.__parser_from_asm_reader(asm_statements)
        self.__procedures = self.__proc_identify(statements)
        self.__proc_name2instance: Dict[str, Procedure] = {proc.name: proc for proc in self.__procedures}

        self.__proc_draw_edges()
        if (possible_cycle := self.__find_cycle()) is not None:
            c = [p.name for p in possible_cycle]
            raise RuntimeError("Loop between procedures is not allowed: {}.".format(c))

    @property
    def procedures(self):
        return self.__procedures

    @property
    def mapping_name2instance(self):
        return self.__proc_name2instance

    def api_basic(self) -> list:
        data = list()
        for proc in self.__procedures:
            begin_addr = proc.beg_addr.val()
            inst_len = len(proc.instruction)
            stop_addr = begin_addr + inst_len * 4
            begin_addr, stop_addr = hex(begin_addr), hex(stop_addr)
            data.append([proc.name, begin_addr, stop_addr, inst_len])
        return data

    def formatted_basic(self, fmt='psql') -> str:
        header = ['Name', 'Begin Addr', 'Stop Addr', 'Inst Len']
        data = self.api_basic()
        return tabulate(data, headers=header, tablefmt=fmt)

    def api_call_relation(self, fmt: bool = False) -> list:
        data = list()
        for proc in self.__procedures:
            incoming = tuple([p.name for p in proc.incoming_proc])
            outgoing = tuple([p.name for p in proc.outgoing_proc])
            if fmt:
                data.append([proc.name, '\n'.join(incoming), '\n'.join(outgoing)])
            else:
                data.append([proc.name, incoming, outgoing])
        return data

    def formatted_call_relation(self, fmt='grid') -> str:
        header = ['Name', 'Incoming', 'Outgoing']
        data = self.api_call_relation(fmt=True)
        return tabulate(data, headers=header, tablefmt=fmt)

    def dot_call_graph(self, filename='procedure_graph.gv', fmt='svg') -> Digraph:
        g = Digraph('Procedure Graph', filename=filename, format=fmt)
        for proc in self.__procedures:
            g.node(proc.name)
        for proc in self.__procedures:
            for to_proc in proc.outgoing_proc:
                g.edge(proc.name, to_proc.name)
        return g


class CallGraphNode:
    def __init__(self, name: str, proc: Procedure):
        self.__name = name
        self.__proc = proc

        self.incoming_edges = list()
        self.outgoing_edges = list()

    @property
    def name(self):
        return self.__name

    @property
    def procedure(self):
        return self.__proc

    @property
    def is_plt(self):
        return self.__proc.is_plt


class CallGraphEdge:
    def __init__(self, src: CallGraphNode, dst: CallGraphNode):
        self.__src = src
        self.__dst = dst

    @property
    def src(self):
        return self.__src

    @property
    def dst(self):
        return self.__dst


class CallGraph:
    def __init__(self, procedure_network: ProcedureNetwork, start_label: str = 'main'):
        self.__proc_network = procedure_network
        self.__start_label = start_label

        self.__nodes: Tuple[CallGraphNode] = tuple()
        self.__edges: Tuple[CallGraphEdge] = tuple()

        self.__build()

    def __build(self):
        mapping_name2instance = self.__proc_network.mapping_name2instance
        if self.__start_label not in mapping_name2instance:
            raise KeyError("Unknown start label {}.".format(self.__start_label))

        nodes_list, edges_list = list(), list()

        entry_proc = mapping_name2instance[self.__start_label]
        bfs_q = deque(
            [CallGraphNode(entry_proc.name, entry_proc)]
        )
        while len(bfs_q) != 0:
            node: CallGraphNode = bfs_q.popleft()
            nodes_list.append(node)
            proc = node.procedure
            for inst in proc.instruction:
                b, _, label, _, _ = inst.branch_info
                if b and (label != proc.name):
                    new_node = CallGraphNode(
                        f"{node.name}|{inst.addr.hex_str()}#{label}", mapping_name2instance[label]
                    )
                    edge = CallGraphEdge(node, new_node)
                    node.outgoing_edges.append(edge)
                    new_node.incoming_edges.append(edge)
                    bfs_q.append(new_node)
                    edges_list.append(edge)

        self.__nodes = tuple(nodes_list)
        self.__edges = tuple(edges_list)

    @property
    def nodes(self):
        return self.__nodes

    @property
    def edges(self):
        return self.__edges

    def api_call_relation(self, fmt: bool = False) -> list:
        data = list()
        for node in self.__nodes:
            incoming = tuple([e.src.name for e in node.incoming_edges])
            outgoing = tuple([e.dst.name for e in node.outgoing_edges])
            if fmt:
                data.append([node.name, '\n'.join(incoming), '\n'.join(outgoing)])
            else:
                data.append([node.name, incoming, outgoing])
        return data

    def formatted_call_relation(self, fmt='grid') -> str:
        header = ['Name', 'Incoming', 'Outgoing']
        data = self.api_call_relation(fmt=True)
        return tabulate(data, headers=header, tablefmt=fmt)

    def draw_graph(self, filename='call_graph.gv', fmt='svg') -> Digraph:
        g = Digraph('Call Graph', filename=filename, format=fmt)
        for node in self.__nodes:
            g.node(node.name)
        for edge in self.__edges:
            g.edge(edge.src.name, edge.dst.name)
        return g


class TCfgNode:
    def __init__(self, name, base_proc: CallGraphNode, instructions: Sequence[Instruction]):
        self.__name = name
        self.__base_proc = base_proc
        self.__instructions = tuple(instructions)

        self.inside_loop: Optional[TCfgLoopHrchy] = None

        self.outgoing_edge: List[TCfgEdge] = list()
        self.incoming_edge: List[TCfgEdge] = list()

        """
        # 读写分析和建立需要用到的数据
        self.still_out_num = 0
        self.out_num = 0
        self.still_in_num = 0
        self.in_num = 0
        self.is_head = False
        self.is_end = False
        self.in_loop = False

        # 读写分析建立过程中需要的参数
        self.no_out = False
        self.no_in = False
        self.node_value = 0
        self.loop_time = 1

        # 热度分析需要的草书
        self.loadlist = list()
        self.storelist = list()
        self.heat_ld_result = dict()
        self.heat_st_result = dict()  # 储存着所有的地址对应的次数
        """

    @property
    def name(self):
        return self.__name

    @property
    def base_proc(self):
        return self.__base_proc

    @property
    def inst_range(self):
        return self.__instructions[0].addr, self.__instructions[-1].addr

    @property
    def instructions(self):
        return self.__instructions

    """
    def set_rw_data(self):

        # 用来算有多少个入边和出边，still_xx用于下面遍历计算
        # TODO 感觉可以用sizeof类似的优化
        for e in self.outgoing_edge:
            if e.is_backEdge:
                pass
            else:
                self.still_out_num += 1
                self.out_num += 1
        for e in self.incoming_edge:
            if e.is_backEdge:
                pass
            else:
                self.still_in_num += 1
                self.in_num += 1

        # 用来设置头部参数，用于往后启动
        if self.in_num == 0:
            self.is_head = True
            self.no_in = True
            self.node_value = 1
            if self.out_num == 0:  # 说明是单节点，没有前面也没有后面
                for e in self.outgoing_edge:
                    if e.is_backEdge:
                        # 设置一下吧，万一漏了啥
                        pass
            else:
                for e in self.outgoing_edge:
                    if e.is_backEdge:
                        pass
                    else:
                        e.edge_value = self.node_value / self.out_num

        if self.out_num == 0:
            self.is_end = True
            self.no_out = True

    def set_rw_value(self):
        if self.no_out:
            pass
        elif self.no_in:
            for e in self.outgoing_edge:
                if e.is_backEdge:
                    pass
                else:
                    e.dst.get_rw_value(e.edge_value)
                    self.still_out_num -= 1

            if self.still_out_num == 0:
                self.no_out = True

    def get_rw_value(self, value):
        self.node_value += value
        self.still_in_num -= 1

        if self.still_in_num == 0:
            self.no_in = True
            if self.is_end:
                pass
            else:
                for e in self.outgoing_edge:
                    if e.is_backEdge:
                        pass
                    else:
                        e.edge_value = self.node_value / self.out_num
    """


class TCfgEdgeType(Enum):
    Textual = auto()
    BranchTaken = auto()
    BranchNoTaken = auto()
    ProcCall = auto()
    ProcReturn = auto()
    Believed = auto()


"""
@dataclass
class RWAnalysis:
    is_back_edge: bool = False
    edge_value: int = 0
    loop_value: int = 0


@dataclass
class LSAnalysis:
    addr: int = 0


class InstCopyInCfg:
    def __init__(self, inst: Instruction) -> None:
        self._base_inst = inst

        self.ls_info = LSAnalysis()

    @property
    def base_inst(self):
        return self._base_inst
"""


class TCfgEdge:
    def __init__(self, src: TCfgNode, dst: TCfgNode, kind: TCfgEdgeType):
        self.__src = src
        self.__dst = dst
        self.__kind = kind

        """
        # 读写分析需要的数据
        self.rw_info = RWAnalysis()
        """

        self.is_backEdge = False
        self.edge_value = 0
        self.loop_value = 0

    @property
    def src(self):
        return self.__src

    @property
    def dst(self):
        return self.__dst

    @property
    def kind(self):
        return self.__kind


class TCfgLoop:
    def __init__(self, name, head: TCfgNode, tail: TCfgNode, back_edge: TCfgEdge, all_nodes: List[TCfgNode]):
        self.__name = name
        self.__head: TCfgNode = head
        self.__tail: TCfgNode = tail
        self.__back_edge: TCfgEdge = back_edge
        self.__all_nodes: frozenset[TCfgNode] = frozenset(all_nodes)

        self.bound = 0

        """
        self.loop_ld_heat = dict()
        self.loop_st_heat = dict()
        self.page_heat_result = dict()  # 这个就不分ld还是st了，因为最后热度就是相加
        """

    @property
    def name(self):
        return self.__name

    @property
    def head(self):
        return self.__head

    @property
    def tail(self):
        return self.__tail

    @property
    def back_edge(self):
        return self.__back_edge

    @property
    def all_nodes(self):
        return self.__all_nodes


class TCfgLoopHrchy(TCfgLoop):
    def __init__(self, name, head: TCfgNode, tail: TCfgNode, back_edge: TCfgEdge, all_nodes: List[TCfgNode]):
        super().__init__(name, head, tail, back_edge, all_nodes)
        self.father: Optional[TCfgLoopHrchy] = None
        self.children: List[TCfgLoopHrchy] = list()


class TCfg:
    def __init__(self, call_graph: CallGraph):

        self.__call_graph = call_graph
        self.__nodes_mapping: Dict[CallGraphNode, List[TCfgNode]] = dict()

        self.__nodes: List[TCfgNode] = list()
        self.__edges: List[TCfgEdge] = list()
        self.__loops: List[TCfgLoopHrchy] = list()

    def add_loop_bound(self, file_name: str):
        bound_mapping = dict()
        with open(file_name, "r", encoding='utf-8') as fp:
            for line in fp.readlines():
                lb_src, lb_dst, bound = line.split()
                bound_mapping[(lb_src, lb_dst)] = int(bound)
        for lp in self.__loops:
            if (b := bound_mapping.get(((e := lp.back_edge).src.name, e.dst.name), None)) is None:
                raise KeyError(f"Cannot find loop bound for loop {lp.name}:{lp.all_nodes} with back edge {lp.back_edge.src.name}-{lp.back_edge.dst.name}.")
            lp.bound = b

    def build_tcfg(self):
        self.__build_tcfg()

    def build_loop_hrchy(self):
        self.__build_loop_hrchy()
        loop_set = set()

        new_all_loops, new_all_loop_name = list(), set()
        for lp in self.__loops:
            if (node_set := tuple(sorted([n.name for n in lp.all_nodes]))) not in loop_set:
                loop_set.add(node_set)
                new_all_loops.append(lp)
                new_all_loop_name.add(lp.name)

        self.__loops = new_all_loops
        for lp in self.__loops:
            if (lp.father is not None) and (lp.father.name not in new_all_loop_name):
                lp.father = None
            lp.children = [_l for _l in lp.children if _l in new_all_loop_name]

    @property
    def nodes_mapping(self):
        return types.MappingProxyType(self.__nodes_mapping)

    @property
    def all_nodes(self):
        return self.__nodes

    @property
    def edges(self):
        return self.__edges

    @property
    def loops(self):
        return self.__loops

    def __build_tcfg(self):

        global_idx = 0  # A global counter of all nodes.
        call_proc_mapping: Dict[str, CallGraphNode] = {p.name: p for p in self.__call_graph.nodes}

        def proc_segmentation(call_proc: CallGraphNode):
            """ The first step (and also what this function does) is to segment every procedure into several basic blocks.
                 A segmentation is inserted between instruction i and instruction i+1 if:
                 - instruction i is a branch or call instruction;
                 - instruction i is a ``ret`` instruction;
                 - instruction i+1 is jumped by other branch instruction.
            """

            nonlocal global_idx
            proc = call_proc.procedure

            """ Find all segmentation positions. """
            seg_before_addr = set()
            seg_after_addr = set()

            for inst in proc.instruction:
                b, _, t_label, _, t_addr = inst.branch_info
                if b:
                    # Situation 1: Instruction is a branch or call instruction.
                    seg_after_addr.add(inst.addr.val())
                    if t_label == proc.name:
                        # Situation 2: Instruction is jumped by other branch instruction.
                        seg_before_addr.add(t_addr.val())
                elif inst.name == 'ret':
                    # Situation 2: Instruction is a ``ret`` instruction.
                    seg_after_addr.add(inst.addr.val())

            """ Segment every procedure into basic blocks with respect to the segmentation positions. """
            all_nodes = list()

            inst_slicing = list()
            for inst in proc.instruction:
                if inst.addr.val() in seg_before_addr and len(inst_slicing) != 0:
                    new_node = TCfgNode("n{}".format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)
                    inst_slicing.clear()
                inst_slicing.append(inst)
                if inst.addr.val() in seg_after_addr and len(inst_slicing) != 0:
                    new_node = TCfgNode('n{}'.format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)
                    inst_slicing.clear()
            else:
                if len(inst_slicing) != 0:
                    new_node = TCfgNode('n{}'.format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)

            return all_nodes

        finish_node_mapping: Dict[CallGraphNode, TCfgNode] = dict()

        for n in self.__call_graph.nodes:
            nodes = proc_segmentation(n)
            self.__nodes_mapping[n] = nodes
            """ Build a mapping from every call procedure to the begin block and finish block. """
            finish_nodes = [n for n in nodes if n.instructions[-1].name == 'ret']
            if len(finish_nodes) > 1:
                raise RuntimeError("Multi-return of a procedure is not allowed. Check procedure {}.".format(n.name))
            elif len(finish_nodes) == 0:
                finish_node_mapping[n] = nodes[-1]
            else:
                finish_node_mapping[n] = finish_nodes[0]

        """
        Build the T-CFG.
        A taken edge is added from branch-er block to branch-ee block. If conditional branch, a non-taken edge is added from current block to the 
        next block.
        A textual edge is added from current block to the next block if it is segmented just because the next block is a branch target.
        A taken edge is added from caller to the begin block if there is branch instruction targeting different procedure. A believed or return 
        edge is added from the finish block to the caller after the procedure executing finishing. 
        """

        def new_edge(src: TCfgNode, dst: TCfgNode, edge_kind: TCfgEdgeType):
            """ This function is to add an edge from ``src`` to ``dst`` with edge kink ``edge_kind``.
             The edge will be updated into ``self.__edges``. """
            e = TCfgEdge(src, dst, edge_kind)
            src.outgoing_edge.append(e)
            dst.incoming_edge.append(e)
            self.__edges.append(e)

        def get_next_block(node_list: List[TCfgNode], n_idx: int):
            try:
                return node_list[n_idx]
            except IndexError:
                return None

        for call_proc, cfg_nodes in self.__nodes_mapping.items():
            for node_idx, node in enumerate(cfg_nodes):
                # For a node in TCfg, if it has branch instruction, then the last one is branch instruction.
                final_inst = node.instructions[-1]
                b, cond, label, offset, addr = final_inst.branch_info
                is_ret = final_inst.name == 'ret'

                if not (b or is_ret):
                    """ Situation 2: The next block is segmented just because it is a branch target.  """
                    next_node = get_next_block(cfg_nodes, node_idx + 1)
                    if next_node is not None:
                        new_edge(node, next_node, TCfgEdgeType.Textual)
                elif b:
                    if is_ret:
                        raise RuntimeError("Unexpected error.")
                    if label == call_proc.procedure.name:
                        """ Situation 1: Current block is a branch-er block. """
                        # A taken edge is added from branch-er block to branch-ee block.
                        for check_node in cfg_nodes:
                            if check_node.inst_range[0].val() == addr.val():
                                target_node = check_node
                                break
                        else:
                            raise KeyError("Do not found target node with start address {} in sub-procedure {}.".format(addr.hex_str(), call_proc.name))
                        new_edge(node, target_node, TCfgEdgeType.BranchTaken)
                        # If conditional branch, a non-taken edge is added from current block to the next block.
                        if cond:
                            next_node = get_next_block(cfg_nodes, node_idx + 1)
                            if next_node is not None:
                                new_edge(node, next_node, TCfgEdgeType.BranchNoTaken)
                    else:
                        """ Situation 3: Current block is a caller and a different procedure is called. """
                        # Edge from caller to callee.
                        target_call_proc_name = "{}|{}#{}".format(call_proc.name, final_inst.addr.hex_str(), label)
                        if target_call_proc_name not in call_proc_mapping:
                            raise KeyError("Do not found target sub-procedure with name {}.".format(target_call_proc_name))
                        target_call_proc = call_proc_mapping[target_call_proc_name]
                        new_edge(node, self.__nodes_mapping[target_call_proc][0], TCfgEdgeType.ProcCall)
                        # Edge from callee back to caller.
                        next_node = get_next_block(cfg_nodes, node_idx + 1)
                        if next_node is not None:
                            callee_node = finish_node_mapping[target_call_proc]
                            has_ret = callee_node.instructions[-1].name == 'ret'
                            kind = TCfgEdgeType.ProcReturn if has_ret else TCfgEdgeType.Believed
                            new_edge(callee_node, next_node, kind)
                elif is_ret:
                    pass

        self.__nodes = sum(list(self.__nodes_mapping.values()), list())

    @staticmethod
    def __tarjan_scc(nodes_considered: List[TCfgNode], edges_considered: Set[TCfgEdge]) -> List[List[TCfgNode]]:
        """ This function is to find all strongly-connected components given a graph including considered nodes and considered edges.
        Code is generated by ChatGPT with suitable prompt.
        The loop finding problem with safety assumption that all loops are affine can be reduced to the SCC problem. See
        https://en.wikipedia.org/wiki/Strongly_connected_component#:~:text=A%20directed%20graph%20is%20called,second%20vertex%20to%20the%20first.
        for details.
        """

        index_counter = 1
        index_mapping: Dict[TCfgNode, int] = {n: None for n in nodes_considered}
        lowlink_mapping: Dict[TCfgNode, int] = {n: None for n in nodes_considered}

        stack: List[TCfgNode] = list()
        onstack_mapping: Dict[TCfgNode, bool] = {n: False for n in nodes_considered}

        scc_list: List[List[TCfgNode]] = list()

        def strong_connect(node: TCfgNode):
            nonlocal index_counter, index_mapping, lowlink_mapping, stack, onstack_mapping, scc_list
            index_mapping[node] = index_counter
            lowlink_mapping[node] = index_counter
            index_counter += 1
            stack.append(node)
            onstack_mapping[node] = True

            for edge in node.outgoing_edge:
                if edge not in edges_considered:
                    continue
                successor = edge.dst
                if index_mapping[successor] is None:
                    strong_connect(successor)
                    lowlink_mapping[node] = min(lowlink_mapping[node], lowlink_mapping[successor])
                elif onstack_mapping[successor]:
                    lowlink_mapping[node] = min(lowlink_mapping[node], index_mapping[successor])

            if lowlink_mapping[node] == index_mapping[node]:
                scc = list()
                while True:
                    successor = stack.pop()
                    onstack_mapping[successor] = False
                    scc.append(successor)
                    if successor == node:
                        break
                scc_list.append(scc)

        for n in nodes_considered:
            if index_mapping[n] is None:
                strong_connect(n)

        return scc_list

    def __build_loop_hrchy(self):

        loop_counter = 0

        def build_subgraph(loop: TCfgLoopHrchy):
            nodes = loop.all_nodes
            edges = set([e for n in nodes for e in n.outgoing_edge if (e.dst in nodes) and (e != loop.back_edge)])
            return list(nodes), edges

        def find_loops(nodes_considered: List[TCfgNode], edges_considered: Set[TCfgEdge], base=None) -> List[TCfgLoopHrchy]:
            nonlocal loop_counter
            loop_list: List[TCfgLoopHrchy] = list()

            scc_list = self.__tarjan_scc(nodes_considered, edges_considered)
            if len(scc_list) == 0:
                raise RuntimeError("Unexpected error in finding SCCs.")
            for scc in scc_list:
                if len(scc) == 1:
                    continue
                nodes_set = set(scc)

                """ An affine loop has exactly one entry node and one exit node. The entry node and exit node may be the same. """
                loop_entry: List[TCfgNode] = list()
                loop_exit: List[TCfgNode] = list()
                for node in nodes_set:
                    if [e for e in node.incoming_edge if e.src not in nodes_set]:
                        loop_entry.append(node)
                    if [e for e in node.outgoing_edge if e.dst not in nodes_set]:
                        loop_exit.append(node)
                if len(loop_entry) != 1 or len(loop_exit) != 1:
                    raise RuntimeError("Irregular loop found. Loop entry: {}, loop exit: {}. Check nodes {}.".format(
                        [node.name for node in loop_entry], [node.name for node in loop_exit], [node.name for node in nodes_set]))
                entry_node, exit_node = loop_entry[0], loop_exit[0]

                """ An affine loop has exactly one back edge that pointed to the entry node. """
                back_edge: List[TCfgEdge] = [e for e in entry_node.incoming_edge if e.src in nodes_set]
                if len(back_edge) != 1:
                    raise RuntimeError("Irregular loop found. Back edge: {}. Check nodes {}.".format(
                        [(e.src.name, e.dst.name) for e in back_edge], [node.name for node in nodes_set]))

                """ Build all loops. """
                loop = TCfgLoopHrchy("l{}".format(loop_counter), entry_node, exit_node, back_edge[0], scc)
                loop_counter += 1
                loop_list.append(loop)

                """ Iterative search. """
                for loop in loop_list:
                    loop.father = base
                    c_nodes, c_edges = build_subgraph(loop)
                    find_loops(c_nodes, c_edges, loop)

            """ Label all nodes the loop inside and build loop hierarchy. """
            if base is not None:
                base.children = loop_list
            for n in nodes_considered:
                if n.inside_loop is None:
                    n.inside_loop = base

            self.__loops.extend(loop_list)
            return loop_list

        considered_nodes = self.__nodes
        considered_edges = set(self.__edges)

        find_loops(considered_nodes, considered_edges)

    def draw_graph(self, filename='tcfg.gv', fmt='svg') -> Digraph:
        g = Digraph('TCFG', filename=filename, format=fmt)
        for call_proc, cfg_nodes in self.__nodes_mapping.items():
            for node in cfg_nodes:
                if not node.outgoing_edge and not node.incoming_edge:
                    # Dead block elimination.
                    continue
                r = node.inst_range
                g.node(node.name, "{}\n{}\n({},{})".format(node.name, node.base_proc.procedure.name, r[0].hex_str(), r[1].hex_str()))
        for edge in self.__edges:
            kind = edge.kind
            if kind == TCfgEdgeType.Textual:
                g.edge(edge.src.name, edge.dst.name)
            elif kind == TCfgEdgeType.BranchTaken:
                g.edge(edge.src.name, edge.dst.name, color='green')
            elif kind == TCfgEdgeType.BranchNoTaken:
                g.edge(edge.src.name, edge.dst.name, color='red')
            elif kind == TCfgEdgeType.ProcCall:
                g.edge(edge.src.name, edge.dst.name, color='purple', label='call')
            elif kind == TCfgEdgeType.ProcReturn:
                g.edge(edge.src.name, edge.dst.name, color='purple', label='return')
            elif kind == TCfgEdgeType.Believed:
                g.edge(edge.src.name, edge.dst.name, color='purple', label='return', style='dashed')
        return g
