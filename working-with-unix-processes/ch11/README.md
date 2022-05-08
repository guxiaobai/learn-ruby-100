# 第 11 章 进程皆可衍生

|本期版本| 上期版本
|:---:|:---:
`Sun May  8 09:17:31 CST 2022` | -

> [Subprocesses](https://docs.ruby-lang.org/en/3.1/Kernel.html#module-Kernel-label-Subprocesses)

### 11.1 Luke, 使用 fork(2)

* 调用 [`fork`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-fork) 的进程称为 `父进程` , 新创建的进程被称为 `子进程`
* 在子进程中，`fork` 返回 `nil`; 在父进程中，`fork` 返回创建的子进程的 `pid`。


### 11.3 使用 block

* 如果你将一个 `block` 传递给 `fork` 方法，那么这个 `block` 将在新的子进程中执行

### 11.5 系统调用

* `fork(2)`

