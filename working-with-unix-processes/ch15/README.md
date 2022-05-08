# 第 15 章 僵尸进程

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 10:57:06 CST 2022` | -

### 15.1 等待终有果

* [`Process#detach`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-detach) : 生成一个新线程，这个线程的唯一工作就是等待指定的子进程结束


### 15.2 僵尸长什么样子

状态为 `z` 或 `Z+` 就表示这是一个僵尸进程

```bash
ps -ho pid,state -p [pid of zombie process]
```

### 15.3 实践领域

* 任何已经结束的进程，如果它的状态信息一直未被读取，那么它就是一个僵尸进程。