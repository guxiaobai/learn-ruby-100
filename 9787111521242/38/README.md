## 第38条：使用 Mock 模拟特定对象

|本期版本| 上期版本
|:---:|:---:
`Sat Apr  9 21:18:42 CST 2022` | -

**技术要点**

* Mock 对象（也称作 Test doubles: 测试替身）：是为那些让运行值不确定的代码返回指定的结果而准备的
* [`MiniTest::Mock`](http://docs.seattlerb.org/minitest/Minitest/Mock.html) 返回一个空对象，它可以模拟任何所需的对象
* [`Object#define_singleton_method`](https://ruby-doc.org/core-3.1.1/Object.html#method-i-define_singleton_method)


**重点回顾**

* 使用 Mock 来隔离外部系统的不稳定因素
* 请确保在测试方法的最后调用了 `Minitest::Mock# verify` 方法

## Ref

* [https://github.com/freerange/mocha](https://github.com/freerange/mocha)