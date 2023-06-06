
from rw_analysis.rw_condition import RWType
class RWOut_Proc:

    def __init__(self,tcfgnodes,segReader,rwtable,tcfgLoops):
        self.tcfg_nodes = tcfgnodes
        self.segreader = segReader
        self.rw_table = rwtable
        self.loop = tcfgLoops
        self.ls_width = 4

        self.bss_res = self.segreader.getbss()
        self.data_res = self.segreader.getdata()

        #for i in self.bss_res:
        #    print(i[2],i[3])
        #for i in self.data_res:
        #    print(i[2],i[3])

        self.node_access_addr = {}
        for node in self.tcfg_nodes:
            self.node_access_addr[node.name] = list()
        
        tempUse = None
        for rwu in self.rw_table:
            # print(rwu.node.name,rwu.ins.tokens,rwu,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)
            # if rwu.ins.addr.hex_str() == "400fb0":
            #     tempUse = rwu
            if rwu.is_torrent == RWType.Global_Tolerant:
                # print(rwu.node.name,rwu.ins.tokens)
                # print("here Global_Tolerant")
                # print()
                if rwu.ins.is_data_group:
                    #print("here is_data_group")
                    self.find_range(rwu.ins.final_addr,rwu.node.name,rwu.find_cycle,RWType.Global_Tolerant)
                    #print(rwu.node.name,self.node_access_addr[rwu.node.name])
                else: 
                    #print("else")      
                    self.node_access_addr[rwu.node.name].append([rwu.ins.final_addr,rwu.find_cycle,RWType.Global_Tolerant])
                    #print(rwu.node.name,self.node_access_addr[rwu.node.name])
            if rwu.is_torrent == RWType.Global_Intolerant:
                # print(rwu.node.name,rwu.ins.tokens)
                # print("here Global_Intolerant")
                if rwu.ins.is_data_group:
                    #print("here is_data_group")
                    self.find_range(rwu.ins.final_addr,rwu.node.name,rwu.find_cycle,RWType.Global_Intolerant)
                    #print(rwu.node.name,self.node_access_addr[rwu.node.name])
                else:
                    #print("else")    
                    self.node_access_addr[rwu.node.name].append([rwu.ins.final_addr,rwu.find_cycle,RWType.Global_Intolerant])
                    #print(rwu.node.name,self.node_access_addr[rwu.node.name])
            #if rwu.is_torrent == RWType.Unknown:
                #print(rwu.node.name,rwu.ins.tokens)
        
        # print(tempUse.is_find)
        # for i in tempUse.find_trace:
        #     print(i.tokens)

        # for k,v in self.node_access_addr.items():
        #     print(k,v)
        #print(self.node_access_addr['n21'])
        self.loopnodes = list()
        
        for ln in self.loop:
            self.loopnodes.append((ln.name,[n.name for n in ln.all_nodes])) 
        
        # for n in self.loopnodes:
        #      print(n)
        #      print(n[0])

        self.loopinfo_tol = {}
        self.loopinfo_intol = {}

        # 给每个容错和非容错数组的字典加个头
        for n in self.loopnodes:
            self.loopinfo_tol[n[0]] = {}
            self.loopinfo_intol[n[0]] = {}
        
        for k,node_addr_info in self.node_access_addr.items():
            # print(node_addr_info)
            if len(node_addr_info) == 0:
                pass
            else:
                for ln in self.loopnodes:
                    loopname = ln[0]
                    nodelist = ln[1]
                    if k in nodelist:
                        for ainfo in node_addr_info:
                            if ainfo[2] == RWType.Global_Tolerant:
                                memmoryaddr = ainfo[0]
                                self.loopinfo_tol[loopname][memmoryaddr] = 0
                            elif ainfo[2] == RWType.Global_Intolerant:
                                memmoryaddr = ainfo[0]
                                self.loopinfo_intol[loopname][memmoryaddr] = 0

                        
        for k,node_addr_info in self.node_access_addr.items():
            if len(node_addr_info) == 0:
                pass
            else:
                for ln in self.loopnodes:
                    loopname = ln[0]
                    nodelist = ln[1]
                    if k in nodelist:
                        for ainfo in node_addr_info:
                            if ainfo[2] == RWType.Global_Tolerant:
                                memmoryaddr = ainfo[0]
                                memmoryvalue = ainfo[1]
                                self.loopinfo_tol[loopname][memmoryaddr] += memmoryvalue
                            elif ainfo[2] == RWType.Global_Intolerant:
                                memmoryaddr = ainfo[0]
                                memmoryvalue = ainfo[1]
                                self.loopinfo_intol[loopname][memmoryaddr] += memmoryvalue

        
        #for k,v in self.loopinfo_intol.items():
        #    print(k)



        
        
        #with open("./output/outputtxt.txt","w") as f:
        #    for k,v in self.loopinfo_intol.items():
        #        f.write(k)
        #        for it in v:
        #            f.write(it)
        #        f.write("\n")


        #for k,v in self.loopinfo_tol.items():
        #    print(k,v)
        #    print("here")
        

        self.loopinfo_tol_output = {}
        self.loopinfo_intol_output = {}
        self.loopinfo = {}

        for n in self.loopnodes:
            self.loopinfo[n[0]] = {}
            self.loopinfo_tol_output[n[0]] = {}
            self.loopinfo_intol_output[n[0]] = {}
        
        for k,v in self.loopinfo_tol.items():
            for addrset in v:
                self.loopinfo_tol_output[k][addrset//4096] = 0

        for k,v in self.loopinfo_intol.items():
            for addrset in v:
                self.loopinfo_intol_output[k][addrset//4096] = 0

        for k,v in self.loopinfo_tol.items():
            for addrset,value in v.items():
                self.loopinfo_tol_output[k][addrset//4096] += value

        for k,v in self.loopinfo_intol.items():
            for addrset,value in v.items():
                self.loopinfo_intol_output[k][addrset//4096] += value
        
        
        #for k,v in self.loopinfo_tol_output.items():
        #    print(k,v)
        #print()
        #for k,v in self.loopinfo_intol_output.items():
        #    print(k,v)

        
        for k,v in self.loopinfo_tol.items():
            for addrset in v:
                self.loopinfo[k][addrset//4096] = 0

        for k,v in self.loopinfo_intol.items():
            for addrset in v:
                self.loopinfo[k][addrset//4096] = 0

        for i in self.loopnodes:
            k = i[0]
            tol = self.loopinfo_tol_output[k]
            intol = self.loopinfo_intol_output[k]
            
            for addr in tol.keys():
                if addr in intol.keys():
                    self.loopinfo[k][addr] = tol[addr]/intol[addr]
                else:
                    self.loopinfo[k][addr] = "完全容错"
            
            for addr in intol.keys():
                if addr in tol.keys():
                    pass
                else:
                    self.loopinfo[k][addr] ="非容错"


        #for k,v in self.loopinfo.items():
        #    print(k,v)

        

    def find_range(self,finalAddr,nodeName,findCycle,toletype):
        for i in self.bss_res:
            if finalAddr >= i[2] and finalAddr < i[3]:
                memory_addr = i[2]
                while memory_addr <= i[3]:
                    self.node_access_addr[nodeName].append([memory_addr,findCycle,toletype])
                    memory_addr += self.ls_width
        for i in self.data_res:
            if finalAddr >= i[2] and finalAddr < i[3]:
                memory_addr = i[2]
                while memory_addr <= i[3]:
                    self.node_access_addr[nodeName].append([memory_addr,findCycle,toletype])
                    memory_addr += self.ls_width

    

