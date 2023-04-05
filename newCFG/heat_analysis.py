from cache_analysis.read_segment import segmentReader

class loop_heat:
    def __init__(self,TCFG,LSProc,filepath) -> None:
        self.lsproc = LSProc
        self.lds_table = self.lsproc.ls_table
        self.bread=segmentReader(filepath)
        self.D=self.bread.getbss()+self.bread.getdata()
        self.tcfg=TCFG
        self.addr_bool={i.final_addr : i.ins.is_data_group for i in self.lds_table}
        self.addr_length={i.final_addr : i.ins.ls_data_width for i in self.lds_table}
        self.page_size=4096
        ###以下变量用来承接结果
        self.heat_result=list() 
        self.lobounds=dict()
    def find_range(self,addr:int):
        for a in self.D:
            if a[2]<= addr <=a[3]:
                return a[2],a[3]

            
                  
    def loop_heat_analysis(self):
        self.D[-1][3] = self.D[0][2]
        for l in self.tcfg.loops:
            #print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
        for n in self.tcfg.all_nodes:
            temp = n.inside_loop.name if n.inside_loop is not None else 'None'
            #print("{} {}".format(n.name, temp))
        #将对应的指令添加到node的热度信息表中
        for i in self.lds_table:
            if i.ins.name[0:1] == "l" and i.is_sp==False:
                #print(i.ins.tokens)
                i.node.loadlist.append((i.ins,i.final_addr))
            # elif i.ins.name[0:1] == "l" and i.ins.is_data_group == True:
            #     pass
            elif i.ins.name[0:1] == "s" and i.is_sp==False:
                i.node.storelist.append((i.ins,i.final_addr))


        for node in self.tcfg.all_nodes:
            for i in node.loadlist:
                if self.addr_bool[i[1]]==False:
                    node.heat_ld_result[i[1],i[1]+int(self.addr_length[i[1]]/8)]=0
                elif self.addr_bool[i[1]]==True:
                    a,b=self.find_range(i[1])
                    for j in range(a,b,4):
                        node.heat_ld_result[j,j+4]=0
            for i in node.loadlist:
                if self.addr_bool[i[1]]==False:
                    node.heat_ld_result[i[1],i[1]+int(self.addr_length[i[1]]/8)]+=1
                elif self.addr_bool[i[1]]==True:
                    a,b=self.find_range(i[1])
                    for j in range(a,b,4):
                        node.heat_ld_result[j,j+4]+=1
            for i in node.storelist:
                if self.addr_bool[i[1]]==False:
                    node.heat_st_result[i[1],i[1]+int(self.addr_length[i[1]]/8)]=0
                elif self.addr_bool[i[1]]==True:
                    a,b=self.find_range(i[1])
                    for j in range(a,b,4):
                        node.heat_st_result[j,j+4]=0  
            for i in node.storelist:
                if self.addr_bool[i[1]]==False:
                    node.heat_st_result[i[1],i[1]+int(self.addr_length[i[1]]/8)]+=1
                elif self.addr_bool[i[1]]==True:
                    a,b=self.find_range(i[1])
                    for j in range(a,b,4):
                        node.heat_st_result[j,j+4]+=1
            #print(node.name,'####',node.heat_ld_result,'######',node.heat_st_result)

        for l in self.tcfg.loops:
            #print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
            for j in l.all_nodes:
                #print(j.name,j.heat_ld_result,j.heat_st_result)
                for key,value in j.heat_ld_result.items():
                    if key in l.loop_ld_heat:
                        l.loop_ld_heat[key]+=value
                    else:
                        l.loop_ld_heat[key]=value
                for key,value in j.heat_st_result.items():
                    if key in l.loop_st_heat:
                        l.loop_st_heat[key]+=value
                    else:
                        l.loop_st_heat[key]=value
        for l in self.tcfg.loops:    #这里我要把st和sd的合起来，统计一个整体的lds结果
            print(l.name,'ld_heat_analysis',l.loop_ld_heat,'st_heat_analysis',l.loop_st_heat)
        for l in self.tcfg.loops:    #这里我要把st和sd的合起来，统计一个整体的lds结果
            #print(l.name)
            for key,value in l.loop_ld_heat.items():
                a=self.find_page(key[0],key[1],value)
                for i in a:
                    if i[0] not in l.page_heat_result:
                        l.page_heat_result[i[0]]=i[1]
                    else:
                        l.page_heat_result[i[0]]+=i[1]
            for key,value in l.loop_st_heat.items():
                b=self.find_page(key[0],key[1],value)
                for i in b:
                    if i[0] not in l.page_heat_result:
                        l.page_heat_result[i[0]]=i[1]
                    else:
                        l.page_heat_result[i[0]]+=i[1]
            self.heat_result.append([l.name]+[l.page_heat_result])
        print(self.heat_result)
        for l in self.tcfg.loops:
            self.lobounds[l.name]=l.bound
        for l in self.heat_result:
            for key in l[1].keys():
                l[1][key]=l[1][key]*self.lobounds[l[0]]        
    def find_page(self,pagestart,pageend,figure):  #这个函数用来确认这个range访问了哪个页面
        temp=list()   
        if pagestart // self.page_size==pageend // self.page_size:
            temp.append([pagestart//self.page_size,figure])
        else:
            for i in range(pagestart,pageend):
                temp.append([i //self.page_size,figure])
        return temp
    def do_it(self):
        self.loop_heat_analysis()
        return self.heat_result