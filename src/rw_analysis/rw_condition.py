import re
from queue import Queue
from enum import Enum, auto

class Re_LoadStore_Ins:
    
    # 区分指令类型
    load_pat = r"ldr" 
    store_pat = r"str"

class RWType(Enum):
    # TODO: Add more instruction types.
    Global_Tolerant = auto()
    Global_Intolerant = auto()
    Local_Tolerant = auto()
    Local_Intolernt = auto()
    Unknown = auto()

class RWUnit:
    __load_cpat = re.compile(Re_LoadStore_Ins.load_pat)
    __store_cpat = re.compile(Re_LoadStore_Ins.store_pat)

    def __init__(self,instr,node):
        self.__ins = instr
        self.__node = node
        self.__final_addr = self.__ins.final_addr
        self.__find_cycle = 0
        self.find_trace = list()
        self.__is_find = False
        self.__is_torrent = RWType.Unknown

    def add_find_cycle(self,ins,nodeValue):

        self.__find_cycle += nodeValue
        self.find_trace.append(ins)
    
    @property
    def find_cycle(self):
        return self.__find_cycle

    def set_torrent(self,ins_name):
        is_load = re.match(self.__load_cpat,self.__ins.name)
        is_store = re.match(self.__store_cpat,self.__ins.name)

        if is_load:
            self.__is_torrent = RWType.Global_Tolerant
        elif is_store:
            self.__is_torrent = RWType.Global_Intolerant

    @property
    def ins(self):
        return self.__ins
    
    @property
    def node(self):
        return self.__node
    
    @property
    def is_torrent(self):
        return self.__is_torrent
    
    @property
    def is_find(self):
        return self.__is_find
    
    def set_find(self):
        self.__is_find = True



class RWProc:
    def __init__(self,ls_table):

        self.__ls_table = ls_table
        self.__rw_table = list()

        for lsunit in self.__ls_table:

            rw_unit = RWUnit(lsunit.ins,lsunit.node)
            self.__rw_table.append(rw_unit)

            if rw_unit.ins.addr.hex_str() == "400fb0":
                tempUse = rw_unit

            find_queue= Queue(0)
            find_queue.put(rw_unit.node)
            temp_node = find_queue.get()
            
            if lsunit.is_sp:
                continue

            find_ins_self = False

            for ins in reversed(temp_node.instructions):
                if ins.addr.val() == rw_unit.ins.addr.val():
                    find_ins_self = True
                    continue
                if find_ins_self:
                    rw_unit.add_find_cycle(ins,temp_node.node_value)
                    self.__each_ins_prco(rw_unit,ins)
                    if rw_unit.is_find:
                        break
            if rw_unit.is_find:
                continue
            else:
                for e in temp_node.incoming_edge:
                    
                    is_loop = False
                    loop_bound = 1
                    find_queue.put(e.src)
                    loop_start = list()

                    if e.is_backEdge:
                        is_loop = True
                        loop_start.append(e.src)
                        loop_bound = loop_bound*1
        
                    while not rw_unit.is_find:
                        
                        temp_node = find_queue.get()
                        
                        #for e in temp_node.incoming_edge:
                        #    find_queue.put(e.src)
                        #    print(e.src.name)
                        
                        #print(temp_node.name)
                        #if rw_unit.ins.addr.hex_str() == "400fb0":
                        #    print("is here")
                            
                        for e in temp_node.incoming_edge:
                            if e.src in loop_start:
                                continue
                            find_queue.put(e.src)

                        for ins in reversed(temp_node.instructions):
                            rw_unit.add_find_cycle(ins,temp_node.node_value*loop_bound)
                            self.__each_ins_prco(rw_unit,ins)

                            if rw_unit.is_find:
                                break

                        for n in loop_start:
                            if temp_node.name == n.name:
                                continue
                        if find_queue.empty():
                            break
                        for e in temp_node.incoming_edge:
                            if e.is_backEdge:
                                is_loop = True
                                loop_start.append(e.src)
                                loop_bound = loop_bound*1
                            else:
                                pass 
            
    def __each_ins_prco(self,rwunit,ins):
        if ins.is_ls:
            if ins.final_addr == rwunit.ins.final_addr:
                rwunit.set_torrent(ins.name)
                rwunit.set_find()

    @property
    def rw_table(self):
        return self.__rw_table     