"""
处理 .bss segment & .data segment
得到 全局变量 地址范围
"""
import re

class segmentReader:

    def __init__(self, fp):
        self.__fpath = fp

        # 打开文件并读取内容
        with open(self.__fpath, 'r', encoding='utf-8') as f:
            self.content = f.read()

    def getbss(self):
        content = self.content
        # 定义正则表达式，用于匹配起始和结束标记之间的内容
        pattern = r'Disassembly of section \.bss:(.*?)(?=Disassembly of section)'

        # 使用re.search()方法查找匹配项，并保存在一个变量中
        match = re.search(pattern, content, re.DOTALL)

        # 如果匹配成功，则进一步处理匹配结果
        if match:
            # 获取匹配到的内容，并去掉多余的空格和换行符
            matches = re.findall(r'^([0-9a-fA-F]+)\s+<(.+)>:$', match.group(1), re.MULTILINE)

            # 将元组转换为列表，并输出结果
            result1 = [list(match) for match in matches]
            # print(result1)
        else:
            print("No match found")


        # ------------------------------------------------------------------------------------------------
        # 仅对.bss segment而言: 考虑从下一个的头来找尾部,且如果是最后一个 尾部默认加4
        # TODO ---> 有没有可能最后一个长度不是4呢? 在 .bss segment中 确实无法判断最后一个 因为没有初始化 所以默认是4
        # 对于非尾部 按照新逻辑 左闭右开 第 i个变量的尾就是第 (i+1)个变量的头
        for i in range(len(result1)-1):

            hex_int = int(result1[i][0], 16)
            # TODO 所以这里需不需要 -4,  ——— int(result2[i+1][0], 16) - 4 ——— 左闭右开就不需要
            next_hex_int = int(result1[i+1][0], 16)

            # append本身地址的int ---> hex_int = int(result1[i][0], 16) ---> result1[i].append(hex_int)
            result1[i].append(hex_int)

            # 十六进制string
            # result1[i].append(hex(next_hex_int))

            # 十进制int
            result1[i].append(next_hex_int)

            # 为了更规范可以新建一个list 重新存
            # result1_segment.append(result1[i])

        # 单独处理最后一个元素
        last_hex_int = int(result1[-1][0], 16)

        # append本身地址的int
        result1[-1].append(last_hex_int)

        # 十六进制string
        # result1[-1].append(hex(last_hex_int))

        # 十进制int
        result1[-1].append(last_hex_int + 4)

        # 为了更规范可以新建一个list 重新存
        # result1_segment.append(result1[-1])

        # print(result1_segment)
        # print(result1)
        return result1



    def getdata(self):
        content = self.content
        # 定义正则表达式，用于匹配起始和结束标记之间的内容
        pattern2 = r'Disassembly of section \.data:(.*?)(?=Disassembly of section .bss:)'

        # 使用re.search()方法查找匹配项，并保存在一个变量中
        match = re.search(pattern2, content, re.DOTALL)

        # 如果匹配成功，则进一步处理匹配结果
        if match:
            # 获取匹配到的内容，并去掉多余的空格和换行符
            matches = re.findall(r'^([0-9a-fA-F]+) <(.*)>:$', match.group(1), re.MULTILINE)

            # 将元组转换为列表，并输出结果
            result2 = [[match[0], match[1].strip()] for match in matches]
            # print(result2)
        else:
            print("No match found")

        # ------------------------------------------------------------------------------------------------
        # 对于非尾部 按照新逻辑 左闭右开 第 i个变量的尾就是第 (i+1)个变量的头
        # 和 .bss segment 同理
        for i in range(len(result2)-1):

            hex_int2 = int(result2[i][0], 16)
            # TODO 所以这里需不需要 -4,  ——— int(result2[i+1][0], 16) - 4 ——— 左闭右开就不需要
            next_hex_int2 = int(result2[i+1][0], 16)

            # append本身地址的int
            result2[i].append(hex_int2)
            # 十进制int
            result2[i].append(next_hex_int2)

        # 单独处理最后一个元素
        last_hex_int2 = int(result2[-1][0], 16)

        # append本身地址的int
        result2[-1].append(last_hex_int2)

        # 十进制int
        result2[-1].append(last_hex_int2 + 4)

        # print(self.bss_segment)
        # print(result2)
        return result2


# segment = segmentReader(r'C:\Users\51777\Desktop\华为memory\test\objdump\-D manytest.asm')
# segment = segmentReader(r'D:\workspace\Gitdocuments\hw-memory\benchmarks\final_benchmark\spec_benchD.asm')
# segment.getbss()
# bss = segment.getbss()
# data = segment.getdata()
# print(bss,'\n',data)