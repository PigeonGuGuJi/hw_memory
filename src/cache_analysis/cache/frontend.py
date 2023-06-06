# -*- coding: utf-8 -*-
from typing import Sequence, Tuple, Hashable, Dict, List


class CacheConfig:
    def __init__(self, offset_len: int, set_index_len: int, assoc: int):
        self.offset_len = offset_len
        self.set_index_len = set_index_len
        self.assoc = assoc


def in_out_nodes_generation(nodes, edges: Sequence[Tuple[Hashable, Hashable]]):
    in_nodes: Dict[Hashable, set] = {k: set() for k in nodes}
    out_nodes: Dict[Hashable, set] = {k: set() for k in nodes}

    for src, dst in edges:
        in_nodes[dst].add(src)
        out_nodes[src].add(dst)

    return in_nodes, out_nodes


class MemoryBlock:
    def __init__(self, set_index: int, tag: int):
        self.set_index = set_index
        self.tag = tag

    def __hash__(self):
        return self.set_index, self.tag

    def __eq__(self, other):
        return isinstance(other, MemoryBlock) and self.__hash__() == other.__hash__()

    def __str__(self):
        return "<MemBlock tag:{} set_index:{}>".format(hex(self.tag), self.set_index)

    def __repr__(self):
        return self.__str__()


def inst_block_gen(addr_beg, addr_end, cache_config: CacheConfig):
    blocks: List[MemoryBlock] = list()
    s_cache_addr, e_cache_addr = addr_beg >> cache_config.offset_len, addr_end >> cache_config.offset_len
    for addr in range(s_cache_addr, e_cache_addr + 1):
        set_index = addr & ((1 << cache_config.set_index_len) - 1)
        tag = addr >> cache_config.set_index_len
        blocks.append(MemoryBlock(set_index=set_index, tag=tag))
    return blocks


def extract_mem_blocks(set_index, block_dict: Dict[Hashable, List[MemoryBlock]]):
    return {ident: [block for block in block_list if block.set_index == set_index]
            for ident, block_list in block_dict.items()}


