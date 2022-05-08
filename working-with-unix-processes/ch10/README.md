# 第 10 章 进程皆有退出码

|本期版本| 上期版本
|:---:|:---:
`Sun May  8 09:06:51 CST 2022` | -


> [Exiting](https://docs.ruby-lang.org/en/3.1/Kernel.html#module-Kernel-label-Exiting)

* 所有进程在退出的时候都带有数字退出码（0-255），用于指明进程是否顺利结束
* 按惯例，退出码为 0 的继承被认为是顺利结束；其他的退出码则表明进程是出现了错误

### 如何退出进程


* 虽然你的脚本没有明确指出使用 exit 语句结束，但实际上它在幕后用的就是这种方式
* 另一种结束进程的方法是使用一个未处理的异常 [`raise`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-raise)