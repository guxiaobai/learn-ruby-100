# 第 3 章 进程皆有标识

|本期版本| 上期版本
|:---:|:---:
`Wed Jun 21 10:57:56 CST 2023` | `Sat May  7 21:53:59 CST 2022`

* 在系统中运行的所有进程都有一个唯一的进程标示符， 称为 `pid` 
* [`Process.pid`](https://docs.ruby-lang.org/en/3.1/Process.html#method-c-pid)、[`$$`](https://docs.ruby-lang.org/en/3.1/globals_rdoc.html)


## 3.2 实践领域

```bash
ps -p 
top -pid 1806
lsof -p
```


### 3.3 系统调用

* `getpid(2)`