# 第 9 章 进程皆有名

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 23:19:35 CST 2022` | -


### 9.1 进程命名

* 系统中每一个进程都有名称
* 你可以在变量`$PROGRAME_NAME` 中获得当前进程的名称。同样地，你也可以给这个全局变量赋值来修改当前进程的名称。 / `$0`

## Ref

* [`Process#setproctitle`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-setproctitle)