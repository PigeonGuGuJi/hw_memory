
from rw_analysis.rw_condition import RWType

class Access_mode:
    def __init__(self,head,lsnumber,findCycle,toletype,lswidth):
        self.access_head = head# f访问的范围最开始是多少
        self.ls_number = lsnumber# ls了多少条，也就是整个访问范围/访问宽度，等于数组的数量
        self.find_cycle = findCycle# 等效路径长度
        self.ls_width = lswidth# 访存宽度
        self.tol_type = toletype


class Tolerance_Calcu:

    def __init__(self,tcfgnodes,segReader,rwtable,tcfgLoops):
        self.tcfg_nodes = tcfgnodes
        self.segreader = segReader
        self.rw_table = rwtable
        self.loop = tcfgLoops
        self.ls_width = 4

        self.bss_res = self.segreader.getbss()
        self.data_res = self.segreader.getdata()

        self.loopnodes = list()


        self.node_access_addr = {}# 用来存储node访问了哪些地址
        self.node_page = {}# 用来存储node访问了哪些页
        for node in self.tcfg_nodes:
            self.node_access_addr[node.name] = list()
            self.node_page[node.name] = list()
        
        
        for rwu in self.rw_table:
            self.find_range(rwu)

        # 算每个node用到了哪些page
        # 利用字典完成去重和初始化
        for n in self.node_access_addr:
            temp_dir_tol= {}
            temp_dir_intol= {}
            for acc_mode in self.node_access_addr[n]: 
                ls_number = acc_mode.ls_number
                head = acc_mode.access_head
                width = acc_mode.ls_width
                tol_type = acc_mode.tol_type
                page_num = head//4096
                if tol_type == RWType.Global_Tolerant:
                    temp_dir_tol[page_num] = 0
                    while ls_number > 0:
                        ls_number -= 1
                        head += width
                        page_num = head//4096
                        temp_dir_tol[page_num] =0
                elif tol_type == RWType.Global_Intolerant:
                    temp_dir_intol[page_num] = 0
                    while ls_number > 0:
                        ls_number -= 1
                        head += width
                        page_num = head//4096
                        temp_dir_intol[page_num] =0
            #for n in temp_dir_tol:
            #    print(n)

            #print()
            self.node_page[n]=[temp_dir_tol,temp_dir_intol]
            
            #for i in self.node_page[n][0]:
            #    print(i)

        for node in self.node_access_addr:
            temp_dir_tol= self.node_page[node][0]
            temp_dir_intol = self.node_page[node][1]
            for acc_mode in self.node_access_addr[node]: 
                ls_number = acc_mode.ls_number
                head = acc_mode.access_head
                width = acc_mode.ls_width
                tol_type = acc_mode.tol_type
                page_num = head//4096
                cycle = acc_mode.find_cycle


                if tol_type == RWType.Global_Tolerant:
                    temp_dir_tol[page_num] += cycle
                    while ls_number > 0:
                        ls_number -= 1
                        head += width
                        page_num = head//4096
                        temp_dir_tol[page_num] += cycle
                elif tol_type == RWType.Global_Intolerant:
                    # print(temp_dir_intol[page_num],cycle)
                    temp_dir_intol[page_num] += cycle
                    while ls_number > 0:
                        ls_number -= 1
                        head += width
                        page_num = head//4096
                        temp_dir_intol[page_num] += cycle 
            
        for node in self.node_page:
            print('这个节点是',node)
            temp_dir_tol= self.node_page[node][0]
            temp_dir_intol = self.node_page[node][1]
            for page in temp_dir_tol:
                print(page,temp_dir_tol[page])
            for page in temp_dir_intol:
                print(page,temp_dir_intol[page])  
        


        for ln in self.loop:
            self.loopnodes.append((ln.name,[n.name for n in ln.all_nodes])) 



    def find_range(self,rwu):

        final_addr = rwu.final_addr
        node_name = rwu.node.name
        find_cycle = rwu.find_cycle
        tol_type = rwu.torrent_type
        is_range = rwu.is_range
        is_sure = rwu.is_sure

        if is_range:
            for i in self.bss_res:
                head = i[2]
                end = i[3]
                self.compare_for_range(final_addr,head,end,node_name,find_cycle,tol_type)
            for i in self.data_res:
                head = i[2]
                end = i[3]
                self.compare_for_range(final_addr,head,end,node_name,find_cycle,tol_type)
        elif is_sure:
            for i in self.bss_res:
                head = i[2]
                end = i[3]
                self.compare_for_single(final_addr,head,end,node_name,find_cycle,tol_type)
            for i in self.data_res:
                head = i[2]
                end = i[3]
                self.compare_for_single(final_addr,head,end,node_name,find_cycle,tol_type)
    
    # 添加宽度处理方案
    def compare_for_range(self,final_addr,head,end,node_name,findCycle,toletype):
        if final_addr >= head and final_addr < end:
            ls_width = 4
            ls_number = (end - head)/4
            temp_acess_mode = Access_mode(head,ls_number,findCycle,toletype,ls_width)
            self.node_access_addr[node_name].append(temp_acess_mode)
        
    
    # 对比单个
    def compare_for_single(self,final_addr,head,end,node_name,findCycle,toletype):
        if final_addr >= head and final_addr < end:
            ls_width = 4
            temp_acess_mode = Access_mode(head,1,findCycle,toletype,ls_width)
            self.node_access_addr[node_name].append(temp_acess_mode)

