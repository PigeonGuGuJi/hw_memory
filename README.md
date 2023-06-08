# HW_memory_CFG

## 介绍

内存稳定性项目的静态分析工具

## 使用
- gui可以通过图形界面直接运行分析程序
- main.ipynb可以直接获得原始信息

## 样例和输入

测试样例位于input下

其中命名为xxx的为构建CFG用的基础版文件，命名为xxxD的为获取变量信息的文件，命名为xxxL的为获取汇编-源码对应关系的文件
## 数据和输出
所有的程序输出文件都在output下

## 源代码
源代码位于src文件夹下
### 文件读取构建
文件读取位于src/synpar文件夹下，其中：
- read_asm实现了asm文件的读取和初步处理
- read_segment实现了对于bss和data段的处理
- read_code实现了对于混合了源代码的汇编文件的处理
### 指令对象化
CFG的构建位于src/institpr文件夹下，其中：
- isa在read_asm的基础上，处理具体指令的分类和对象化
- cfg在isa的基础上，构建控制流程图，生成图结构和绘制对应的图像
### CFG构建
CFG的构建位于src/cfg文件夹下，其中：
- isa在read_asm的基础上，处理具体指令的分类和对象化
- cfg在isa的基础上，构建控制流程图，生成图结构和绘制对应的图像
### loadstore分析和读写分析
loadstore和读写分析的流程位于src/rw_analysis下，其中：
- loadstore在cfg生成之后对相应的指令进行分析
- rw_condition用户读写分析

### 热度分析
热度分析的流程位于src/hotness下

### Cache分析
cache分析谓语src/cache_analysis下

