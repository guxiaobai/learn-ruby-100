# 03 Lifecycle of a Thread


* [`Thread::Queue`](https://docs.ruby-lang.org/en/master/Thread/Queue.html)
* [`Thread#value`](https://docs.ruby-lang.org/en/master/Thread.html#method-i-value) 返回代码块的最后的表达式的值
* [`Thread#status`](https://docs.ruby-lang.org/en/master/Thread.html#method-i-status) 返回线程的状态
* [`Thread.stop`](https://docs.ruby-lang.org/en/master/Thread.html#method-c-stop)该线程主动休眠，并不再被调度，直到调用[`Thread#wakeup`](https://docs.ruby-lang.org/en/master/Thread.html#method-i-wakeup)后，该线程才再次成为可调度线程
* [`Thread.pass`](https://docs.ruby-lang.org/en/master/Thread.html#method-c-pass) 类似stop，请求调度器调度其他线程，但是该线程并不会sleep