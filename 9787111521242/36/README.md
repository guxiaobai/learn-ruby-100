# 第 36 条：熟悉单元测试工具 MiniTest

|本期版本| 上期版本
|:---:|:---:
`Sat Apr  9 14:49:30 CST 2022` | -

**1- 技术要点**

* 从 Ruby 1.9 开始， MiniTest 发布了第一个版本
* MiniTest 取代了原标准测试框架 TestUnit, 同时它又保持着对 TestUnit 的接口兼容性
* 几乎所有断言的方法都有对应的反演（refutaion）方法，这些方法都是用来否定断言的

**2 - 重要升级**

* [Renamed `MiniTest::Unit::TestCase` to `Minitest::Test` (subclassing Runnable).](https://github.com/seattlerb/minitest/blob/master/History.rdoc#label-5.0.0+-2F+2013-05-10)


**3 - 消除重复**

* [`setup()`](http://docs.seattlerb.org/minitest/Minitest/Test/LifecycleHooks.html#method-i-setup)、[`teardown()`](http://docs.seattlerb.org/minitest/Minitest/Test/LifecycleHooks.html#method-i-teardown)

**4 - 集中测试**

* [Rake::TestTask](https://ruby.github.io/rake/Rake/TestTask.html)

**要点回顾**

* 测试方法需要以 `test_` 作为前缀。
* 简短的测试更容易理解, 也更容易维护。
* 使用合适的断言方法生成更容易读的出错信息。
* 断言（Assertion）和 反演（refutaion）的文档在 [`MiniTest::Assertions`](http://docs.seattlerb.org/minitest/Minitest/Assertions.html) 中。