# -*- coding: utf-8 -*-
import re
from collections import deque
from copy import deepcopy
from functools import reduce
from typing import Callable, Dict, Hashable, Iterable, List, Optional, OrderedDict, Sequence, Tuple, Union


class CacheSetState:
    def __init__(self, max_age: int, evicted: bool = False):
        self.max_age = max_age
        self.have_evicted_line = evicted
        self.states = [set() for _ in range(max_age + evicted)]

    def where(self, b: Hashable):
        return next((age for age, state in enumerate(self.states) if b in state), -1)

    def new_access_insert(self, b: Hashable):
        if (age := self.where(b)) != -1:
            self.states[age].discard(b)
        self.states[0].add(b)

    def all_blocks(self):
        return [b for s in self.states for b in s]

    def age_shifting(self, age: int):
        if age == self.max_age - 1:
            if self.have_evicted_line:
                self.states[age + 1].update(self.states[age])
            self.states[age].clear()
        else:
            self.states[age + 1].update(self.states[age])
            self.states[age].clear()


class SetStateOperation:
    UpdateFuncTy = Callable[[CacheSetState, Hashable], bool]
    JoinFuncTy = Callable[[CacheSetState, CacheSetState], CacheSetState]

    @staticmethod
    def must_update(s: CacheSetState, b: Hashable) -> bool:
        for age in reversed(range(0, b_age if (is_hit := (b_age := s.where(b)) != -1) else s.max_age)):
            s.age_shifting(age)
        s.new_access_insert(b)
        return is_hit

    @staticmethod
    def may_update(s: CacheSetState, b: Hashable) -> bool:
        for age in reversed(range(0, b_age + 1 if (is_hit := (b_age := s.where(b)) != -1) else s.max_age)):
            s.age_shifting(age)
        s.new_access_insert(b)
        return is_hit

    @staticmethod
    def persistent_update(s: CacheSetState, b: Hashable):
        is_hit = ((b_age := s.where(b)) != -1) and (b_age != s.max_age)
        for age in reversed(range(0, b_age if b_age != -1 else s.max_age)):
            s.age_shifting(age)
        s.new_access_insert(b)
        return is_hit

    @staticmethod
    def must_join(s1: CacheSetState, s2: CacheSetState):
        new_s = CacheSetState(s1.max_age, evicted=False)
        for b in set(s1.all_blocks()).intersection(set(s2.all_blocks())):
            new_s.states[max(s1.where(b), s2.where(b))].add(b)
        return new_s

    @staticmethod
    def may_join(s1: CacheSetState, s2: CacheSetState):
        new_s = CacheSetState(s1.max_age, evicted=False)
        for b in set(s1.all_blocks()).union(set(s2.all_blocks())):
            target_age = min_age if (min_age := min((age1 := s1.where(b)), (age2 := s2.where(b)))) != -1 else max(age1, age2)
            new_s.states[target_age].add(b)
        return new_s

    @staticmethod
    def persistent_join(s1: CacheSetState, s2: CacheSetState):
        new_s = CacheSetState(s1.max_age, evicted=True)
        for b in set(s1.all_blocks()).union(set(s2.all_blocks())):
            new_s.states[max(s1.where(b), s2.where(b))].add(b)
        return new_s

    @staticmethod
    def state_same(s1: CacheSetState, s2: CacheSetState):
        return all(l1 == l2 for l1, l2 in zip(s1.states, s2.states))


class MemoryBlock:
    def __init__(self, set_index: int, tag: int):
        self.set_index = set_index
        self.tag = tag

    def __str__(self):
        return f"<MemBlk tag:{hex(self.tag)} idx:{hex(self.set_index)}>"

    def __repr__(self):
        return self.__str__()


class CacheConfig:
    def __init__(self, offset_len: int, set_index_len: int, assoc: int):
        self.offset_len = offset_len
        self.set_index_len = set_index_len
        self.assoc = assoc

    def block_gen(self, addr_beg, addr_end):
        return [MemoryBlock(set_index=(cache_addr & ((1 << self.set_index_len) - 1)),
                            tag=(cache_addr >> self.set_index_len))
                for cache_addr in range(addr_beg >> self.offset_len, ((addr_end - 1) >> self.offset_len) + 1)]

    def block2address(self, mb: MemoryBlock):
        return (mb.tag << (self.offset_len + self.set_index_len)) + (mb.set_index << self.offset_len) + 0

    def generate_set_state(self, evicted: bool):
        return CacheSetState(max_age=self.assoc, evicted=evicted)


RangeBlockMapTy = Tuple[Union[int, Tuple[int, int]], List[MemoryBlock]]


class FixpointNode:
    def __init__(self, ident: str, range_block_mapping: Sequence[RangeBlockMapTy]):
        self.ident = ident

        self.access_blocks = tuple([mb for _, mb_list in range_block_mapping for mb in mb_list])
        self.__access_ranges = tuple([r for r, _ in range_block_mapping])
        self.__range2num = tuple([len(mb_list) for _, mb_list in range_block_mapping])
        self.is_hit: List[bool] = [False] * len(self.access_blocks)

        self.incoming: List[FixpointNode] = list()
        self.outgoing: List[FixpointNode] = list()

        self.__in_state_by_set: Dict[int, CacheSetState] = dict()
        self.__out_state_by_set: Dict[int, CacheSetState] = dict()

    def analysis_result(self):
        return [(r, self.access_blocks[(rl := sum(self.__range2num[:i])): (rr := rl + self.__range2num[i])], self.is_hit[rl: rr])
                for i, r in enumerate(self.__access_ranges)]

    def set_in_state(self, idx: int, s: CacheSetState):
        self.__in_state_by_set[idx] = s

    def get_in_state(self, idx: int) -> Optional[CacheSetState]:
        return self.__in_state_by_set.get(idx, None)

    def set_out_state(self, idx: int, s: CacheSetState):
        self.__out_state_by_set[idx] = s

    def get_out_state(self, idx: int) -> Optional[CacheSetState]:
        return self.__out_state_by_set.get(idx, None)


class FixpointGraph:
    def __init__(self, nodes: Iterable[str], edges: Iterable[Tuple[str, str]],
                 access_mapping: Dict[str, Sequence[RangeBlockMapTy]], **kwargs):
        self.all_nodes = [FixpointNode(ident, range_block_mapping=access_mapping.get(ident, list())) for ident in nodes]
        self.ident_mapping: Dict[str, FixpointNode] = {n.ident: n for n in self.all_nodes}
        self.entry = self.ident_mapping.get(kwargs.get('entry', -1), self.all_nodes[0])
        for src, dst in edges:
            if (n_src := self.ident_mapping.get(src)) and (n_dst := self.ident_mapping.get(dst)):
                n_src.outgoing.append(n_dst)
                n_dst.incoming.append(n_src)
        self.it_number = 0

    def fixpoint_set(self, set_idx: int, join_func: SetStateOperation.JoinFuncTy, update_func: SetStateOperation.UpdateFuncTy, max_it: int):

        def one_round():
            round_fixpoint, checked, in_q = True, {n.ident: False for n in self.all_nodes}, {n.ident: False for n in self.all_nodes}
            q: deque[FixpointNode] = deque([self.entry])
            in_q[self.entry.ident] = True
            while q and self.it_number < max_it:
                cur_node = q.popleft()
                in_q[cur_node.ident] = False
                if to_join_states := [pred.get_out_state(set_idx) for pred in cur_node.incoming]:
                    joined_state = reduce(join_func, to_join_states)
                    in_eq = SetStateOperation.state_same(cur_node.get_in_state(set_idx), joined_state)
                    cur_node.set_in_state(set_idx, joined_state)
                else:
                    in_eq = True
                is_hit_eq = True
                updated_out_state = deepcopy(cur_node.get_in_state(set_idx))
                for idx, block in enumerate(cur_node.access_blocks):
                    if block.set_index == set_idx:
                        hit_flag = update_func(updated_out_state, block.tag)
                        is_hit_eq &= hit_flag == cur_node.is_hit[idx]
                        cur_node.is_hit[idx] = hit_flag
                out_eq = SetStateOperation.state_same(cur_node.get_out_state(set_idx), updated_out_state)
                cur_node.set_out_state(set_idx, updated_out_state)
                if (not (in_eq and is_hit_eq and out_eq)) or (not checked[cur_node.ident]):
                    for node in [_n for _n in cur_node.outgoing if not in_q[_n.ident]]:
                        q.append(node)
                        in_q[node.ident] = True
                checked[cur_node.ident] = True
                round_fixpoint &= in_eq and is_hit_eq and out_eq
                self.it_number += 1
            return round_fixpoint

        is_round_fixpoint = False
        while not is_round_fixpoint and self.it_number < max_it:
            is_round_fixpoint = one_round()
        return is_round_fixpoint


def read_from_file(f: str) -> Tuple[CacheConfig, FixpointGraph, Dict[str, str]]:
    node_pattern = re.compile(r"^\s*(\w+)\s*;.*$")
    edge_pattern = re.compile(r"^\s*(\w+)\s*->\s*(\w+)\s*;.*$")
    access_pattern = re.compile(r"^\s*\[\s*(\w+)\s*](.+);.*$")
    '''
    ^\s*: 匹配字符串开头的零个或多个空格
    \[\s*(\w+)\s*\]: 匹配一个方括号以及其中间可能包含的零个或多个空格和一个或多个单词字符（即字母、数字或下划线）。
    (.+): 匹配一个或多个任意字符（除了换行符）
    ;.*$: 匹配分号和之后可能存在的零个或多个任意字符（除了换行符），直到字符串结尾
    '''
    key_val_pattern = re.compile(r"^\s*(\w+)\s*:\s*(\w+)\s*;.*$")
    '''
    用 -> 匹配edge信息
    用 [] 匹配access
    用 : 匹配cache信息配置
    '''

    basic_results, other_param = {'nodes': [], 'edges': [], 'access': dict()}, dict()

    config = CacheConfig(int(other_param.get('cache_offset', 6)), int(other_param.get('cache_set_index', 8)), int(other_param.get('cache_assoc', 4)))

    with open(f, 'r', encoding='utf-8') as fp:
        for idx, ln in enumerate(fp.readlines()):
            try:
                line = ln.strip()
                if not line or line.startswith(';'):
                    continue
                if m := re.match(node_pattern, line):
                    basic_results['nodes'].append(*m.groups())
                elif m := re.match(edge_pattern, line):
                    basic_results['edges'].append(tuple(m.groups()))
                elif m := re.match(access_pattern, line):
                    node, acc = m.groups()
                    if node in basic_results['access']:
                        raise ValueError(f"There are multiple memory accesses to the node {node}.")
                    acc_list: List[RangeBlockMapTy] = []
                    for item in [item.strip() for item in acc.split(',')]:
                        try:
                            addr_list = [int(a, 16) if a.startswith(('0x', '0X')) else int(a, 10) for a in [a.strip() for a in item.split('-')]]
                            if len(addr_list) == 1:
                                acc_list.append((a := addr_list[0], config.block_gen(a, a + 1)))
                            elif len(addr_list) == 2:
                                acc_list.append(((addr_list[0], addr_list[1]), config.block_gen(*addr_list)))
                            else:
                                raise RuntimeError
                        except Exception:
                            raise ValueError(f"Unexpected access (range): {item}.")
                    basic_results['access'][node] = tuple(acc_list)
                elif m := re.match(key_val_pattern, line):
                    k, v = m.groups()
                    if k in other_param:
                        raise KeyError(f"Key {k} is already added.")
                    other_param[k] = v
                else:
                    raise ValueError("Unrecognized line.")
            except Exception as e:
                raise ValueError(f"An error was encountered while processing line {idx}.\n"
                                 f"<:Line Content:> {ln.__repr__()}\n"
                                 f"<:Error Details:> {e.__repr__()}")

    graph = FixpointGraph(basic_results['nodes'], basic_results['edges'],
                          {ident: acc_info for ident, acc_info in basic_results['access'].items()}, **other_param)
    return config, graph, other_param


def fixpoint(config: CacheConfig, graph: FixpointGraph, analysis_type: str, **kwargs):
    """
    Supported analysis type: ``[must, may, persistent]``
    Supported keyword arguments:
     - ``considered_node``: [Sequence of hashable] Specify which nodes are considered during fixpoint. All nodes for default.
     - ``considered_set``: [Sequence of int] Specify which sets to perform fixpoint iteration on. For default, all set is considered.
     - ``no_init``: [bool, default ``False``] Do not initialize set state.
     - ``max_iter``: [int, default 2147483648] The maximum number of iterations that can be accepted for each cache set.
    :return: If all considered set reaches fixpoint.
    """
    if analysis_type not in ['must', 'may', 'persistent']:
        raise ValueError(f"Unknown analysis type {analysis_type}. Supported types are must, may and persistent.")

    considered_set = set(kwargs.get('considered_set', range(int(2 ** config.set_index_len))))

    if not kwargs.get('no_init', False):
        graph.it_number = 0
        for n in graph.all_nodes:
            n.is_hit = [False] * len(n.is_hit)
            for idx in considered_set:
                evicted = analysis_type == 'persistent'
                n.set_in_state(idx, config.generate_set_state(evicted=evicted))
                n.set_out_state(idx, config.generate_set_state(evicted=evicted))

    return all(graph.fixpoint_set(set_idx, join_func=getattr(SetStateOperation, f"{analysis_type}_join"),
                                  update_func=getattr(SetStateOperation, f"{analysis_type}_update"),
                                  max_it=kwargs.get('max_iter', int(2 ** 31))) for set_idx in considered_set)

