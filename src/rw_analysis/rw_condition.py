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

    def __init__(self,lsunit):
        self.__ins = lsunit.ins
        self.__node = lsunit.node
        self.__lsunit = lsunit
        self.__find_cycle = 0
        self.__find_trace = list()# 调试用，存储寻找路径
        self.__is_find = False
        self.__final_addr = lsunit.final_addr

        self.__is_local = False# 纯局部变量
        self.__is_range = False# 带sp的全局变量
        self.__is_sure = False# 确定了地址的便利那个
        self.__torrent_type = RWType.Unknown

        self.set_torrent()

    def add_find_cycle(self,node_name,head,end,value):
        #这里调整一下格式
        self.__find_trace.append([node_name,head,end,value])
        self.__find_cycle += (end-head)/4*value
    
    @property
    def find_cycle(self):
        return self.__find_cycle
    
    @property
    def find_trace(self):
        return self.__find_trace

    def set_torrent(self):
        is_load = re.match(self.__load_cpat,self.__ins.name)
        is_store = re.match(self.__store_cpat,self.__ins.name)

        if is_load:
            self.__torrent_type = RWType.Global_Tolerant
        elif is_store:
            self.__torrent_type = RWType.Global_Intolerant

    @property
    def ins(self):
        return self.__ins
    
    @property
    def node(self):
        return self.__node
    
    @property
    def lsunit(self):
        return self.__lsunit
    
    @property
    def final_addr(self):
        return self.__final_addr
    
    @property
    def torrent_type(self):
        return self.__torrent_type
    
    @property
    def is_find(self):
        return self.__is_find
    
    def set_find(self):
        self.__is_find = True
    
    @property
    def is_local(self):
        return self.__is_local
    
    def set_local_true(self):
        self.__is_find = False
        self.__is_local = True

    @property
    def is_range(self):
        return self.__is_range
    
    def set_range_true(self):
        self.__is_range = True
    
    @property
    def is_sure(self):
        return self.__is_sure
    
    def set_sure(self):
        self.__is_sure = True



class RWProc:
    def __init__(self,ls_proc):

        self.__ls_table = ls_proc.ls_table
        self.__ls_dir = ls_proc.ls_dir


        self.__rw_table = list()
        
        for lsunit in self.__ls_table:

            rw_unit = RWUnit(lsunit)
            if lsunit.is_imm_sp:
                rw_unit.set_local_true()
            elif lsunit.is_sp:
                rw_unit.set_range_true()
            else:
                rw_unit.set_sure()

            self.__rw_table.append(rw_unit)
        


        for rw_unit in self.__rw_table:
            

            find_queue = Queue(0)
            find_queue.put(rw_unit.node)
            loop_start = list()# 在识别到loop头节点之后就会将其加入，用于后面的判断
            
            temp_node = find_queue.get()
            temp_ls_dir = self.__ls_dir[temp_node.name]

            # 纯局部变量，不参与查找
            if rw_unit.is_local:
                continue
            else:
                self.compare_addr_selfnode(rw_unit,temp_node,temp_ls_dir)
                if rw_unit.is_find:
                    continue
                else:
                    # 这一步相比原来做出了改动，单纯处理入队的事情
                    for e in temp_node.incoming_edge:
                        # 这里考虑loopbound的设置,未来直接在loop——value上整合loopbound
                        is_loop = False
                        # e.src直接指向单个node，不是一个list
                        find_queue.put(e.src)

                        if e.is_backEdge:
                            is_loop = True
                            loop_start.append(e.src)
                    if find_queue.qsize() == 0:
                        pass
                    else:
                        #TODO 把find变成list，可以对于多个来源进行追踪
                        while not rw_unit.is_find:
                            
                            temp_node = find_queue.get()
                            temp_ls_dir = self.__ls_dir[temp_node.name]
                            
                            
                            # 该节点的后继节点入队
                            # 这里的判断流程还需要修改，比如要把node踢出
                            for e in temp_node.incoming_edge:
                                
                                if e.src in loop_start:
                                    continue
                                elif e.is_backEdge:
                                    is_loop = True
                                    loop_start.append(e.src)
                                find_queue.put(e.src)
                                    
                            self.compare_addr_othernode(rw_unit,temp_node,temp_ls_dir)

                            # 这个写哪儿
                            if rw_unit.is_find:
                                break
                            if find_queue.empty():
                                break
    
    def compare_addr_selfnode(self,rw_unit,temp_node,temp_ls_dir):
        this_addr = rw_unit.final_addr
        temp_match_lsunit = list()
        node_head,node_end = temp_node.inst_range
        head_addr = node_head.val()
        end_addr = rw_unit.ins.addr.val()# 因为这个是从本指令开始找的

        for lsunit in temp_ls_dir:
            if lsunit.final_addr == this_addr:
                if rw_unit.lsunit == lsunit:
                    # 找到自己了
                    pass
                elif lsunit.ins_addr > end_addr:
                    pass
                else:
                    temp_match_lsunit.append(lsunit)
        
        self.cal_ins_num(rw_unit,head_addr,end_addr,temp_match_lsunit,temp_node)
        

    def compare_addr_othernode(self,rw_unit,temp_node,temp_ls_dir):
        this_addr = rw_unit.final_addr
        temp_match_lsunit = list()
        node_head,node_end = temp_node.inst_range
        head_addr = node_head.val()
        end_addr = node_end.val()

        for lsunit in temp_ls_dir:
            if lsunit.final_addr == this_addr:
                temp_match_lsunit.append(lsunit)

        self.cal_ins_num(rw_unit,head_addr,end_addr,temp_match_lsunit,temp_node)

            
    
    # 具体的比较步骤
    def cal_ins_num(self,rw_unit,head,end,temp_match_lsunit,temp_node):
        node_value = temp_node.node_value
        range_end = end

        if len(temp_match_lsunit) == 0:
            range_head = head
            rw_unit.add_find_cycle(temp_node.name,range_head,range_end,temp_node.node_value)
        else:
            range_head = temp_match_lsunit[0].ins_addr
            for lsunit in temp_match_lsunit:
                if lsunit.ins_addr > range_head:
                    range_head = lsunit.ins_addr
            
            rw_unit.add_find_cycle(temp_node.name,range_head,range_end,temp_node.node_value)
            rw_unit.set_find()


    @property
    def rw_table(self):
        return self.__rw_table