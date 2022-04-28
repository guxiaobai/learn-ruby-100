#  3 Ruby 如何执行代码

* YARV 是一个双堆栈机

**1 - 内部栈**

* SP 栈指针
* PC 程序计数器

**2  调用栈**

* CFP: 当前帧指针(current frame pointer)


## 3.1.2 执行块调用

* TOP控制帧: 启动新程序
* EVAL帧: 对应脚本的顶级(main)作用域
* CFUNC
* BLOCK

## 3.2 访问Ruby变量的两种方式

### 3.2.1 本地变量访问

