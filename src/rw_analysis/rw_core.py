# 这一部分主要是guguji的工作，打包成了读写的核心程序，方便后面的调用
# 从loop的信息对接，到loadstore指令处理，到rw容错分析
import random
from rw_analysis.loadstore import LSProc
from rw_analysis.rw_condition import RWProc, RWType
from rw_analysis.tolerance_calcu import Tolerance_Calcu


class loadstore_Obj:
    
    def __init__(self,segreader,tcfg): 
        self.tcfg_nodes = tcfg.all_nodes
        self.tcfg_edges = tcfg.edges
        self.tcfg_loops = tcfg.loops
        self.segreader = segreader
        
        # 在这里解决一些loop没有解决的问题
        self.__loop_proc()
        
        # 处理loadstore问题，这一步主要是回朔找地址
        self.__ls_proc()

        # 处理readwrite问题
        self.__rw_proc()


    def __loop_proc(self):
        # 在loop构建完成之后设置后面需要的值
        for l in self.tcfg_loops:
            l.back_edge.is_backEdge = True
        for n in self.tcfg_nodes:
            n.set_rw_data()# 设置入出入边数量，谁是头节点/尾节点，以及用于启动的头节点的出边的值
        
        # TODO 这种做法是为了跳出两层循环，感觉可以尝试优化
        temp_bool = True
        while temp_bool:
            no_end = False
            for n in self.tcfg_nodes:
                n.set_rw_value()
                if not n.no_out:
                    no_end = True
                temp_bool = no_end

        # 这里仅仅是设置loopbounds以供使用
        # TODO 后面可以进一步设置loopbounds
        for e in self.tcfg_edges:
            if e.is_backEdge:
                e.loop_value = 500
                e.edge_value = 2

        # for e in self.tcfg_nodes:
        #     print(e.node_value)
    
    def __ls_proc(self):
        self.lsproc = LSProc(self.tcfg_nodes)

        self.lds_table = self.lsproc.ls_table

        """ for i in self.lds_table:
            print(i.ins.tokens,i.is_imm_sp,i.is_sp,i.addr_offset)
            for l in i.target_list:
                print(l.pm,l.target_name) """

        """ for i in self.lds_table:
            i.final_addr
            i.local_offset() """

        #for i in self.lds_table:
            #if i.ins_addr == 4197808:
            #for target in i.target_list:
            #    print(target.target_name,target.offset_int,target.base,target.is_find)
        #    if not i.is_imm_sp:
        #        print(i.ins.tokens,i.final_addr,"偏移",i.backtrace_offset,"基地址",i.base,"是否是immsp",i.is_imm_sp,"是否是sp",i.is_sp,i.node.name) 
    
    def __rw_proc(self):
        self.rwproc = RWProc(self.lsproc)

        Global_Tolerant_value = 0
        Global_Intolerant_value = 0

        #for rwu in self.rwproc.rw_table:
        #    if rwu.is_find:
        #        print(rwu.node.name,rwu.ins.tokens,rwu.find_cycle,rwu.final_addr,rwu.torrent_type)
            #if rwu.is_torrent == RWType.Global_Tolerant:
            #    Global_Tolerant_value += rwu.find_cycle
            #    print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name,rwu.is_torrent,rwu.find_cycle,rwu.ins.is_data_group)
        #print()
        #for rwu in self.rwproc.rw_table:
            #print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)
            #if rwu.is_torrent == RWType.Global_Intolerant:
            #    Global_Intolerant_value += rwu.find_cycle
            #    print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name,rwu.is_torrent,rwu.find_cycle,rwu.ins.is_data_group)

        #print("全局的容错路径为：",Global_Tolerant_value)
        #print("全局的非容错路径为：",Global_Intolerant_value)  

        tol_cal = Tolerance_Calcu(self.tcfg_nodes,self.segreader,self.rwproc.rw_table,self.tcfg_loops)

        #self.loop_info = rwout.loopinfo

        # for k,v in self.loop_info.items():
        #    print(k,v)
