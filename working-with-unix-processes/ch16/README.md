# 第 16 章 进程皆可获得信号

|本期版本| 上期版本
|:---:|:---:
`Sun May  8 10:00:35 CST 2022` | -

> [signals](https://docs.ruby-lang.org/en/3.1/signals_rdoc.html)

### 16.1 捕获 SIGCHLD

* [`Kernel#trap`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-trap)


### 16.2 SIGCHLD 与并发

* 信号投递是不可靠的
* 要正确地处理 CHLD, 你必须在一个循环中调用 Process.wait, 查找所有已经结束的子进程
* `Process::WNOHANG` : 如果没有子进程退出，那么就不需要进行阻塞
* [`IO#sync`](https://docs.ruby-lang.org/en/3.1/IO.html#method-i-sync)

### 16.4 信号来自何方

* 信号是由一个进程发送到另一个进程，只不过是借用内核作为中介。
* [`Process#kill`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-kill)


### 16.12 系统调用

* `kill(2)` / `sigaction(2)` / `signal(7)`