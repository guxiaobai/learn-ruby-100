# 01 Your're Always in a Thread

* 任何程序至少有一个线程：主线程 [`Thread.main`](https://docs.ruby-lang.org/en/master/Thread.html#method-c-main)
* 当主线程退出时，其它线程会立即退出，并且当前 Ruby 进程也会退出
* [`Thread.current`](https://docs.ruby-lang.org/en/master/Thread.html#method-c-current) 指向当前运行的线程
