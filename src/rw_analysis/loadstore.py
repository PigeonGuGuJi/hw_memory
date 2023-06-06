# 读写分析的第一步，处理loadstore部分
from queue import Queue
import re

class LSUnit:

    def __init__(self,ins,node):

        
        self.__ins = ins
        self.__node = node
        self.__addr = self.__ins.addr.val()
        
        #需要寻找的寄存器的数量
        self.target_num = self.__ins.ls_target_num
        if self.target_num == 1:
            self.__reg_target = self.__ins.ls_reg_target
        else:
            self.reg_target_list = self.__ins.ls_reg_target_list
            self.reg_target_list_num = self.target_num
        

        self.__addr_offset = self.__ins.ls_addr_offset
        self.__is_find = False
        self.__final_addr = 0
        self.__is_sp = False
        self.__local_offset = 0
        if self.target_num == 1:
            if self.__reg_target == "sp":
                self.__is_find = True
                self.__is_sp = True
                self.__local_offset = self.__ins.local_offset

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
        self.__ins

    @property
    def reg_target(self):
        return self.__reg_target
    
    def set_reg_target(self,addr):
        self.__reg_target = addr

    
    

    @property
    def addr_offset(self):
        return self.__addr_offset

    def add_addr_offset(self,num):
        self.__addr_offset += num

    @property
    def final_addr(self):
        #给全局用的
        if self.target_num == 1:
            if self.__is_find:
                if self.__is_sp:
                    pass
                else:
                    self.__final_addr = int(self.reg_target,16)
                    self.__final_addr += self.__addr_offset

            self.__ins.set_final_addr(self.__final_addr)
            return self.__final_addr
        else:
            if self.__is_find:
                tar_1 = self.reg_target_list[0]
                tar_2 = self.reg_target_list[1][1]
                
                #if self.__is_sp:
                    
                is_hex_addr = re.match(self.re_hex_addr,tar_1)
                
                if is_hex_addr:
                    self.__final_addr = int(tar_1,16)
                    self.__final_addr += self.__addr_offset
                    self.__ins.is_data_group = True
                    self.__is_sp = False

                is_hex_addr = re.match(self.re_hex_addr,tar_2)
                if is_hex_addr:
                    self.__final_addr = int(tar_2,16)
                    self.__final_addr += self.__addr_offset
                    self.__ins.is_data_group = True
                    self.__is_sp = False
            
            self.__ins.set_final_addr(self.__final_addr)
            return self.__final_addr


                    

    
    @property
    def local_offset(self):
        #给sp用的局部偏移
        if self.__is_find:
            if self.__is_sp:
                self.__local_offset = self.__addr_offset
                
        self.__ins.set_local_offset(self.__local_offset)
        return self.__local_offset

class LSProc:

    def __init__(self,cfg_list):

        self.__tcfg_nodes = cfg_list
        self.__ls_table = list()

        self.re_num = re.compile(r":[1-9]\d*")


        for node in self.__tcfg_nodes:
            for ins in node.instructions:
                if ins.is_ls and ins.ls_handle:
                    temp_lsunit = LSUnit(ins,node)
                    self.__ls_table.append(temp_lsunit)
        

        for lsunit in self.__ls_table:
            
            #目标寄存器就是sp的就直接跳出了，不用处理
            if lsunit.is_sp:
                lsunit.set_is_find()
                lsunit.local_offset
                continue

            find_queue= Queue(0)
            find_queue.put(lsunit.node)
            temp_node = find_queue.get()

            find_ins_self = False

            for ins in reversed(temp_node.instructions):
                if ins.addr.val() == lsunit.ins.addr.val():
                    find_ins_self = True
                    continue
                if find_ins_self:
                    # print(ins.tokens)
                    self.__each_ins_prco(lsunit,ins)
                    if lsunit.is_find:
                        break
            if lsunit.is_sp:#这个是为了阻止进入下一个node，因为sp暂时只在本node分析
                lsunit.local_offset
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
                        self.__each_ins_prco(lsunit,ins)
                        if lsunit.is_find:
                            break
                    if lsunit.is_sp:
                        lsunit.local_offset
                        break
                    if find_queue.empty():
                        break
                            

    def __each_ins_prco(self,lsunit,ins):
        if lsunit.target_num == 1:
            if ins.is_mov:
                if lsunit.reg_target == ins.mov_first_opperand:
                    lsunit.set_reg_target(ins.mov_target)
                    if ins.mov_target == "sp":
                        lsunit.set_is_find()
                        lsunit.set_sp_true()
            if ins.is_adrp:
                if lsunit.reg_target == ins.adrp_first_opperand:
                    lsunit.set_reg_target(ins.adrp_addr)
                    lsunit.set_is_find()
            if ins.is_add:
                if lsunit.reg_target == ins.add_1op:
                    if ins.add_same:
                        if isinstance(ins.add_3op,int):
                            lsunit.add_addr_offset(ins.add_3op)
                        # print(lsunit.addr_offset)
                    elif ins.add_imm:
                        lsunit.set_reg_target(ins.add_2op)
                        print(ins.add_3op)
                        lsunit.add_addr_offset(ins.add_3op)
            if ins.is_ls:
                if lsunit.reg_target == ins.ls_reg_target:
                    if ins.name in ('ldr', 'ldrsw'):
                        if ins.ls_reg_target == ins.ls_first_opperand:
                            lsunit.add_addr_offset(ins.ls_addr_offset)
                        if lsunit.reg_target == ins.ls_first_opperand:
                            if not ins.is_nsp:
                                lsunit.reg_target = "sp about"
                                lsunit.set_is_find()
                                lsunit.set_sp_true()

        else:
            tar_1 = lsunit.reg_target_list[0]
            tar_2 = lsunit.reg_target_list[1][1]
            if ins.is_mov:
                if tar_1 == ins.mov_first_opperand:
                    lsunit.reg_target_list[0] = ins.mov_first_opperand
                    if ins.mov_target == "sp":
                        lsunit.set_sp_true()
                        lsunit.reg_target_list_num -= 1
                        self.target_group_set_find(lsunit)

                if tar_2 == ins.mov_first_opperand:
                    lsunit.reg_target_list[1][1] = ins.mov_first_opperand
                    if ins.mov_target == "sp":
                        lsunit.set_sp_true()
                        lsunit.reg_target_list_num -= 1
                        self.target_group_set_find(lsunit)
            if ins.is_adrp:
                if tar_1 == ins.adrp_first_opperand:
                    lsunit.reg_target_list[0] = ins.adrp_addr
                    lsunit.reg_target_list_num -= 1
                    self.target_group_set_find(lsunit)
                if tar_2 == ins.adrp_first_opperand:
                    lsunit.reg_target_list[1][1] = ins.adrp_addr
                    lsunit.reg_target_list_num -= 1
                    self.target_group_set_find(lsunit)
            if ins.is_add:
                if tar_1 == ins.add_1op:
                    if ins.add_same:
                        if isinstance(ins.add_3op,int):
                            lsunit.add_addr_offset(ins.add_3op)
                        # print(lsunit.addr_offset)
                    elif ins.add_imm:
                        lsunit.reg_target_list[0] = ins.add_2op
                        lsunit.reg_target_list_num -= 1
                        self.target_group_set_find(lsunit)
                        lsunit.add_addr_offset(ins.add_3op)
                if tar_2 == ins.add_1op:
                    if ins.add_same:
                        if isinstance(ins.add_3op,int):
                            lsunit.add_addr_offset(ins.add_3op)
                        # print(lsunit.addr_offset)
                    elif ins.add_imm:
                        tar_2 = lsunit.reg_target_list[1][1] = ins.add_2op
                        lsunit.reg_target_list_num -= 1
                        self.target_group_set_find(lsunit)
                        lsunit.add_addr_offset(ins.add_3op)
            if ins.is_ls:
                if ins.name in ('ldr', 'ldrsw'):
                    if tar_1 == ins.ls_first_opperand:
                        lsunit.add_addr_offset(ins.ls_addr_offset)
                    if tar_2 == ins.ls_first_opperand:
                        lsunit.add_addr_offset(ins.ls_addr_offset)
                    
                    if tar_1 == ins.ls_first_opperand:
                        if not ins.is_nsp:
                            lsunit.reg_target_list[0] = "sp about"
                            lsunit.reg_target_list_num -= 1
                            self.target_group_set_find(lsunit)
                            lsunit.set_sp_true()
                    if tar_2 == ins.ls_first_opperand:
                        if not ins.is_nsp:
                            tar_2 = lsunit.reg_target_list[1][1] = "sp about"
                            lsunit.reg_target_list_num -= 1
                            self.target_group_set_find(lsunit)
                            lsunit.set_sp_true()


    def target_group_set_find(self,lsunit):
        if lsunit.reg_target_list_num == 0:
            lsunit.set_is_find()

    @property
    def ls_table(self):
        return self.__ls_table
    