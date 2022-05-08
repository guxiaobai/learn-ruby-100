# 第 19 章 生成终端进程

### 19.1 fork + exec

> [`Kernel#exec`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-exec)

* `exec(2)` 非常简单，它允许你使用另一个进程来替换当前进程。

### 19.2 exec 的参数

* 把字符串传递给 exec ,它实际上会启动一个 shell 进程，然后在将这个字符串交由shell 解释