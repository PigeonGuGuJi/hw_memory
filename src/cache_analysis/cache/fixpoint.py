# -*- coding: utf-8 -*-
from collections import deque
from copy import deepcopy
from enum import Enum, auto
from functools import reduce
from typing import Hashable, Sequence, Dict, List, Callable
from cache_analysis.cache.abstract_states import CacheSetState, must_join, may_join, persistent_join, \
    state_equal, must_update, may_update, persistent_update
from cache_analysis.cache.frontend import CacheConfig, MemoryBlock


class FixpointNode:
    def __init__(self, ident: Hashable, access_blocks: Sequence[Hashable],
                 in_nodes: set, out_nodes: set, in_state: CacheSetState, out_state: CacheSetState):
        self.ident = ident
        self.access_blocks = access_blocks
        self.in_nodes = in_nodes
        self.out_nodes = out_nodes
        self.in_state = in_state
        self.out_state = out_state

    def __str__(self):
        return "<{} ACC:{} IN:{}, OUT:{} IN_STAT:{}, OUT_STAT:{}>".format(
            self.ident, self.access_blocks, self.in_nodes, self.out_nodes, self.in_state, self.out_state
        )

    def __repr__(self):
        return self.__str__()


def fixpoint_nodes_generation(nodes, in_nodes: Dict[Hashable, set], out_nodes: Dict[Hashable, set],
                              cache_config: CacheConfig, evicted: bool,
                              mem_block_dict: Dict[Hashable, List[MemoryBlock]],
                              key: Callable[[MemoryBlock], Hashable] = None
                              ):
    if key is None:
        """ Only tags of memory blocks are meaningful in fixpoint algorithm. """
        key = lambda x: x.tag
    fp_nodes = list()
    for ident in nodes:
        block_key = [key(block) for block in mem_block_dict[ident]]
        node = FixpointNode(ident=ident,
                            access_blocks=block_key,
                            in_nodes=in_nodes[ident],
                            out_nodes=out_nodes[ident],
                            in_state=CacheSetState(max_age=cache_config.assoc, evicted=evicted),
                            out_state=CacheSetState(max_age=cache_config.assoc, evicted=evicted))
        fp_nodes.append(node)

    return fp_nodes

  
class FixpointType(Enum):
    Must = auto()
    May = auto()
    Persistent = auto()


class Fixpoint:
    def __init__(self, ty: FixpointType, entry: Hashable, all_nodes: Sequence[FixpointNode]):
        self.__join_func, self.__update_func = {
            FixpointType.Must: (must_join, must_update),
            FixpointType.May: (may_join, may_update),
            FixpointType.Persistent: (persistent_join, persistent_update)}.get(ty, (None, None))
        assert self.__join_func is not None, "Unknown fixpoint type {}.".format(ty)
        self.__node_dict: Dict[Hashable, FixpointNode] = {o.ident: o for o in all_nodes}
        self.__entry_ident = entry
        assert self.__entry_ident in self.__node_dict, \
            "Cannot find entry node {} in all given nodes {}.".format(self.__entry_ident, self.__node_dict)
        self.__pse_topsort()

    def __pse_topsort(self):
        seq = list()
        checked, q = {self.__entry_ident}, deque([self.__entry_ident])
        while len(q) > 0:
            cur_node = self.__node_dict[q.popleft()]
            checked.add(cur_node.ident)
            seq.append(cur_node.ident)
            unvisited_successor = [out_ident for out_ident in cur_node.out_nodes if out_ident not in checked]
            q.extend(unvisited_successor)
        self.__sorted_idents = tuple(seq)

    @property
    def pse_topsort_seq(self):
        return self.__sorted_idents

    def round(self):
        is_fixpoint = True
        for cur_node_ident in self.__sorted_idents:
            cur_node = self.__node_dict[cur_node_ident]
            to_join_states = [self.__node_dict[pred].out_state for pred in cur_node.in_nodes]
            if len(to_join_states) > 0:
                joined_state = reduce(self.__join_func, to_join_states)
                cur_node.in_state = joined_state
                in_eq = state_equal(cur_node.in_state, joined_state)
            else:
                in_eq = True
            updated_out_state = deepcopy(cur_node.in_state)
            for block in cur_node.access_blocks:
                self.__update_func(updated_out_state, block)
            out_eq = state_equal(cur_node.out_state, updated_out_state)
            cur_node.out_state = updated_out_state
            is_fixpoint = is_fixpoint and in_eq and out_eq
        return is_fixpoint

    def run(self):
        is_fixpoint = False
        while not is_fixpoint:
            is_fixpoint = self.round()
