# 第 17 章 进程皆可互通

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 13:10:49 CST 2022` | -

* 进程通信（简称IPC）

## 17.1 我们的第一个管道


* 管道是单向数据流
* [`IO#pipe`](https://docs.ruby-lang.org/en/3.1/IO.html#method-c-pipe): 返回一个包含两个元素的数组，这两个元素皆为 `IO` 对象
* 基本上你可以将其视为 [`File`](https://docs.ruby-lang.org/en/3.1/File.html) 来对待


### 17.3 共享管道

* 使用 `#puts`  和 `#gets` 来对一个由行终止符分割的 String 进行读取

### 17.7 系统调用

* `pipe(2)`、`socketpair(2)`、`recv(2)`、`send(2)`