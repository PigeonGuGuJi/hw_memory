# 读写分析的第一步，处理loadstore部分
from queue import Queue
from cfg.isa import ls_target
import re

#对于涉及到loadstore的处理流程对象化对象化
class LSUnit:

    def __init__(self,ins,node):
        self.__ins = ins # 不要轻易使用这里的调用改变ins的值
        self.__node = node
        self.__addr = ins.addr.val()
        self.__original_offset = ins.ls_addr_offset # 从ins处获得的原始立即数offset，不需要改回去
        
        
        self.__is_find = False
        self.__final_addr = 0
        self.__is_sp = False # 这个只能说明例子中涉及sp

        self.__base = 0 # 基地址，配合判断用，不一定用得上
        self.__backtrace_offset = 0 # 后面的偏移都加在这个上面

        self.target_list = list()
        

        # 开始针对输入进行初始化，输入合适的信息
        if ins.is_nsp:
            self.__is_imm_sp = False # sp立即偏移，说明根本都不用找地址

        for target in ins.ls_reg_target_list:
            temp_reg = ls_target(target.pm,target.target_name)
            self.target_list.append(temp_reg)


        if len(self.target_list) == 1:
            if self.target_list[0].target_name == "sp":
                self.__is_find = True
                self.__is_sp = True
                self.__is_imm_sp = True #只有一个目标寄存器且是sp，这应该是唯一一种情况是立即sp的

        self.re_hex_addr = re.compile(r"[0-9a-fA-F]{1,}")
    
    
    
    @property
    def ins(self):
        return self.__ins
    
    @property
    def ins_addr(self):
        return self.__addr
    
    @property
    def node(self):
        return self.__node

    @property
    def is_find(self):
        return self.__is_find
    
    def set_is_find(self):
        self.__is_find = True

    @property
    def is_sp(self):
        return self.__is_sp
    
    def set_sp_true(self):
        self.__is_sp = True
    
    @property
    def is_imm_sp(self):
        return self.__is_imm_sp
    
    @property
    def base(self):
        return self.__base

    
    def set_base(self,base):
        self.__base_hex = base
        self.__base =int(base, 16)

    @property
    def original_offset(self):
        return self.__original_offset
    
    @property
    def backtrace_offset(self):
        return self.__backtrace_offset

    def add_offset(self,num):
        self.__backtrace_offset += num


    @property
    def final_addr(self):
        # print(self.__base,type(self.__original_offset),type(self.backtrace_offset),type(self.__base))

        self.__final_addr = self.__original_offset + self.backtrace_offset + self.__base
    
        
        
        return self.__final_addr





class LSProc:

    def __init__(self,tcfg_nodes):

        self.__tcfg_nodes = tcfg_nodes
        
        self.__ls_table = list()#lstable是用来承接lstable的列表

        self.re_num = re.compile(r"((?:[1-9]\d*)|(?:0x[0-9a-fA-F]*))" )
        

        #将loadstore流程对象化，保存在列表中
        for node in self.__tcfg_nodes:
            # if node.name == "n93":
            # if node.name == "n56":
            for ins in node.instructions:
                if ins.is_ls and ins.ls_handle:
                    temp_lsunit = LSUnit(ins,node)
                    self.__ls_table.append(temp_lsunit)
                    

        for lsunit in self.__ls_table:
            
            # print(lsunit.ins.tokens,lsunit.node.name)
            # 如果是sp+偏移的类型的就直接跳出了，不用处理
            if lsunit.is_imm_sp:
                lsunit.set_is_find()
                continue
            

            #if lsunit.ins_addr == 4197808:
            
            # node进队列开始回朔寻址
            find_queue= Queue(0)
            find_queue.put(lsunit.node)
            temp_node = find_queue.get()

            #用来判断回朔本节点的时候是否找到自己
            find_ins_self = False

            # 因为是回朔的过程，所以是一个倒序搜索
            # 且为了防止找到本node中本质量下面的指令，则必须要找到自己之后才能开始回朔过程
            #print(lsunit.ins.tokens,lsunit.node.name)
            for ins in reversed(temp_node.instructions):
                if ins.addr.val() == lsunit.ins.addr.val():
                    find_ins_self = True
                    continue# 要把本次跳出了
                if find_ins_self:
                    # if lsunit.node.name == "n93":
                    # print(ins.tokens)
                    self.__target_list_proc(lsunit,ins)
                    if lsunit.is_find:
                        break
            if lsunit.is_sp:#阻止进入下一个node，sp暂时只在本node分析
                continue
            elif temp_node.in_num == 0:#这么写是让只有一条还是回边被处理到，虽然不知道有没有这种东西
                pass
            else:
                for e in temp_node.incoming_edge:
                    if e.is_backEdge:#loadstore中，回边是不用处理的
                        continue
                    else:
                        find_queue.put(e.src)
                while not lsunit.is_find:
                    temp_node = find_queue.get()

                    for e in temp_node.incoming_edge:
                        if e.is_backEdge:
                            continue
                        else:
                            find_queue.put(e.src)
                    
                    for ins in reversed(temp_node.instructions):
                        self.__target_list_proc(lsunit,ins)
                        if lsunit.is_find:
                            break
                    if find_queue.empty():
                        break
                            

    def __target_list_proc(self,lsunit,ins):
        
        for target in lsunit.target_list:
            self.__compare_with_ins_dtl(lsunit,target,ins)

        not_find_num = len(lsunit.target_list)
        
        for target in lsunit.target_list:
            if target.is_find:
                not_find_num -= 1
                if target.is_base:
                    lsunit.set_base(target.base)
                    lsunit.add_offset(target.offset_int) 
                elif target.is_num:
                    lsunit.add_offset(target.offset_int)
                elif target.is_sp:
                    lsunit.set_sp_true()
                    lsunit.add_offset(target.offset_int)
            else:
                # 如果有一个没找到就可以直接跳出循环，结束这一轮查找了
                break
        
        if not_find_num == 0:
            lsunit.set_is_find()
        
        #print(ins.tokens)
        #for target in lsunit.target_list:
        #    print(target.target_name,target.is_find)
        
        
        #print()
        


    def __compare_with_ins_dtl(self,lsunit,this_ls_target,ins):
        # TODO mov进来一个数字
        if ins.is_mov:
            if this_ls_target.target_name == ins.mov_first_opperand:
                this_ls_target.set_new_target(ins.mov_target)
                if ins.mov_target == "sp":
                    this_ls_target.set_is_find()
                    this_ls_target.set_is_sp()
                else:
                    is_imm = re.match(self.re_num,ins.mov_target)
                    if is_imm:
                        this_ls_target.set_is_num()

                        temp = is_imm.groups()[0]
                        if temp[0:2] == "0x":
                            offset = int(temp,16)
                        else:
                            offset = int(temp)
                        
                        this_ls_target.add_offset(offset)
        elif ins.is_adrp:
            
            if this_ls_target.target_name == ins.adrp_first_opperand:
                this_ls_target.set_base(ins.adrp_addr)
                this_ls_target.set_is_base()
        elif ins.is_add:
            if this_ls_target.target_name == ins.add_1op:
                if ins.add_same:
                    if isinstance(ins.add_3op,int):
                        this_ls_target.add_offset(ins.add_3op)
                    else:
                        temp_reg = ls_target("+",ins.add_3op)
                        lsunit.target_list.append(temp_reg)
                elif ins.add_imm:
                    this_ls_target.set_new_target(ins.add_2op)
                    this_ls_target.add_offset(ins.add_3op)
        elif ins.is_ls:
            if this_ls_target.target_name == ins.ls_first_opperand:
                #print("here")
                if ins.name in ('ldr', 'ldrsw'):
                    #print("here is ldrsw",ins.is_nsp)
                    if not ins.is_nsp:
                        #print("here in ")
                        this_ls_target.set_is_find()
                        this_ls_target.set_is_sp()


    @property
    def ls_table(self):
        return self.__ls_table
    