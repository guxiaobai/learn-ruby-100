# 第 7 章 进程皆有环境变量

|本期版本| 上期版本
|:---:|:---:
`Sat May  7 22:57:01 CST 2022` | -


* 所有进程都从其父进程出继承环境变量

### 7.1 这是个散列吗

* 实现了 `Enumerable` 和部分 `Hash` API, 但并非全部

### 7.3 系统调用

* `setenv(3)`、`getenv(3)`、`environ(7)`

## Ref

* [`ENV`](https://docs.ruby-lang.org/en/3.1/ENV.html)