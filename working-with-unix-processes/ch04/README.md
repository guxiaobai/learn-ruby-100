# 第 4 章 进程皆有父

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 21:56:17 CST 2022` | -

* 系统中运行的每个进程都有对应的父进程。每个进程都知道其父进程的标识符（称为 `ppid`）
* [`Process.ppid`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-ppid)

### 4.3 系统调用

* `getppid(2)`