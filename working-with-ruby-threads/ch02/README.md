# 2 Threads of Execution

* 创建线程: [`Thread.new`](https://docs.ruby-lang.org/en/master/Thread.html#method-c-new)
* 在主线程中对其他线程调用 [`Thread#join`](https://docs.ruby-lang.org/en/master/Thread.html#method-i-join)，将阻塞主线程以等待该子线程结束、

## Native threads

* 所有ruby衍生的线程最终会映射到操作系统的本地线程上

`macOS` 上查看一个进程衍生的线程数量：

```bash
top -l1 -pid -stats pid, th
```

## Ref


* [https://blog.csdn.net/whatday/article/details/108933578](https://blog.csdn.net/whatday/article/details/108933578)