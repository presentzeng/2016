# virtual OS

### 原理机制

1. 提供hardware模拟寄存器

2. OS作为任务调度

3. 用sleep循环模拟中断1s来一次

4. 开辟两个空间,分别模拟vm和pm

5. 提供页面转换机制

6. 一个uboot驱动

7. 一个cmd shell用于交互

8. 模拟cpu时钟,放在irq里面,每1ms来一次


### 具体步骤
1. 搭建makefile link平台
2. uboot作为main函数入口
3. 完成irq部分,用函数指针,尝试注册一个中断试试



4. 完成hardware部分,里面调用irq的中断注册,监测每个寄存器(死循环)
5. 完成Os部分,提供任务初始化,shed等等
4. 完成framework部分,用于提供接口给app层
5. app统一一种开头格式 void appfunc(void *)
6. 提供cmd用于调用,由uboot在引导OS创建后创建的第一个任务

### 伪代码
VirtualMem.c
提供一个基本的缺页处理
