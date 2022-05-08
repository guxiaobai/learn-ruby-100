# 第 18 章 守护进程

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 19:40:30 CST 2022` | -

* 守护进程是在后台运行的进程，不受终端用户控制

### 18.3 深入 Rack

* [`Process#daemon`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-daemon) 可以将当前进程变成守护进程

### 18.5 进程组和会话组

**进程组**

>  [`Process#setpgrp `](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-setpgrp)、 [`Process#getpgrp `](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-getpgrp)

* 每个进程都属于某个组，每个组都有唯一的整数 id。进程组是一个相关进程的集合，通常是父进程与其子进程。
* 通常情况下，进程组 id 和 进程组组长的 pid 相同
* **终端接收信号，并将其转发给前台进程组中的所有进程**

**会话组**

* 它是进程组的集合
* **发送给会话领导的信号被转发到该会话中的所有进程组内，然后在被转发到这些进程组中的所有进程**
* [`Process#setsid`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-setsid) 会使衍生进程成为一个新进程组和新会话组的组长兼领导