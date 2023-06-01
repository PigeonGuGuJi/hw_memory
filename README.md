# HW_memory_CFG

## 介绍

内存稳定性项目的静态分析工具

## 样例和输入

测试样例位于example下

其中命名为xxx的为构建CFG用的基础版文件，命名为xxxD的为获取变量信息的文件，命名为xxxL的为获取汇编-源码对应关系的文件

## CFG构建
CFG的构建位于CFG文件夹下，其中：
- read_asm实现了文件的读取和初步处理
- isa用于处理具体指令的分类和对象化
- cfg用于生成图结构和绘制对应的图像
- loadstore在cfg生成之后对相应的指令进行分析
- rw_condition用户读写分析

## 使用
- gui可以通过图形界面直接运行分析程序
- main.ipynb可以直接获得原始信息