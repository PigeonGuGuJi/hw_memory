# -*- coding: utf-8 -*-
from copy import deepcopy
from typing import Hashable, List, Optional


class CacheSetState:
    def __init__(self, max_age: int, evicted: bool = False, init_state: Optional[List[set]] = None):
        self.__max_age = max_age
        self.__evicted_line = evicted
        self.__state_len = max_age if not evicted else max_age + 1
        if init_state is not None:
            assert len(init_state) == self.__state_len, "Invalid length of init_state."
            assert all([isinstance(o, set) for o in init_state]), "All elements in init_state must be instances of set."
            self.__states = deepcopy(init_state)
        else:
            self.__states = [set() for _ in range(self.__state_len)]

    def __str__(self):
        if self.__evicted_line:
            state_str = ", ".join(['{}' if len(o) == 0 else o.__str__() for o in self.__states[: -1]])
            evicted_str = self.__states[-1].__str__()
            return f"line:[{state_str}] evict:{evicted_str}"
        else:
            state_str = ", ".join(['{}' if len(o) == 0 else o.__str__() for o in self.__states])
            return f"line:[{state_str}]"

    def __repr__(self):
        return "<CacheSetState max_age={}, evicted={}>".format(self.__max_age, self.__evicted_line)

    @property
    def evicted_line(self):
        return self.__evicted_line

    @property
    def max_age(self):
        return self.__max_age

    @property
    def states(self):
        return self.__states

    def where(self, b: Hashable):
        for age, state in enumerate(self.__states):
            if b in state:
                return age
        return -1

    def new_access_insert(self, b: Hashable):
        age = self.where(b)
        if age != -1:
            self.__states[age].discard(b)
        self.__states[0].add(b)

    def all_blocks(self):
        return [b for s in self.__states for b in s]

    def age_shifting(self, age: int):
        assert 0 <= age < self.__max_age, "Invalid age {}.".format(age)
        if age == self.__max_age - 1:
            """ If the oldest memory block needs to be offset, then if there is an eviction line, 
            move to the eviction line, otherwise, delete it directly from the state. """
            if self.__evicted_line:
                self.__states[age + 1].update(self.__states[age])
            self.__states[age].clear()
        else:
            self.__states[age + 1].update(self.__states[age])
            self.__states[age].clear()


def must_update(s: CacheSetState, b: Hashable):
    assert not s.evicted_line, "Must analysis only supports non-evicted cache set state."
    b_age = s.where(b)
    b_age = b_age if b_age != -1 else s.max_age
    for age in reversed(range(0, b_age)):
        s.age_shifting(age)
    s.new_access_insert(b)


def may_update(s: CacheSetState, b: Hashable):
    assert not s.evicted_line, "May analysis only supports non-evicted cache set state."
    b_age = s.where(b)
    b_age = b_age if b_age != -1 else s.max_age - 1
    for age in reversed(range(0, b_age + 1)):
        s.age_shifting(age)
    s.new_access_insert(b)


def persistent_update(s: CacheSetState, b: Hashable):
    assert s.evicted_line, "Persistent analysis only supports evicted cache set state."
    b_age = s.where(b)
    b_age = b_age if b_age != -1 else s.max_age
    for age in reversed(range(0, b_age)):
        s.age_shifting(age)
    s.new_access_insert(b)


def must_join(s1: CacheSetState, s2: CacheSetState):
    assert (not s1.evicted_line) and (not s2.evicted_line), "Must analysis only supports non-evicted cache set state."
    assert s1.max_age == s2.max_age, "Un-matched max age for two cache set state."
    new_s = CacheSetState(s1.max_age, evicted=False)
    blocks = set(s1.all_blocks()).intersection(set(s2.all_blocks()))
    for b in blocks:
        age1, age2 = s1.where(b), s2.where(b)
        new_s.states[max(age1, age2)].add(b)
    return new_s


def may_join(s1: CacheSetState, s2: CacheSetState):
    assert (not s1.evicted_line) and (not s2.evicted_line), "Must analysis only supports non-evicted cache set state."
    assert s1.max_age == s2.max_age, "Un-matched max age for two cache set state."
    new_s = CacheSetState(s1.max_age, evicted=False)
    blocks = set(s1.all_blocks()).union(set(s2.all_blocks()))
    for b in blocks:
        age1, age2 = s1.where(b), s2.where(b)
        target_age = min(age1, age2)
        target_age = target_age if target_age != -1 else max(age1, age2)
        new_s.states[target_age].add(b)
    return new_s


def persistent_join(s1: CacheSetState, s2: CacheSetState):
    assert s1.evicted_line and s2.evicted_line, "Persistent analysis only supports evicted cache set state."
    assert s1.max_age == s2.max_age, "Un-matched max age for two cache set state."
    new_s = CacheSetState(s1.max_age, evicted=True)
    blocks = set(s1.all_blocks()).union(set(s2.all_blocks()))
    for b in blocks:
        age1, age2 = s1.where(b), s2.where(b)
        new_s.states[max(age1, age2)].add(b)
    return new_s


def state_equal(s1: CacheSetState, s2: CacheSetState):
    assert (s1.max_age == s2.max_age) and (s1.evicted_line == s2.evicted_line)
    for l1, l2 in zip(s1.states, s2.states):
        if l1 != l2:
            return False
    return True
