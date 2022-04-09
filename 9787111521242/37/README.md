# 第 37 条: 熟悉 MiniTest 的需求测试

|本期版本| 上期版本
|:---:|:---:
`Sat Apr  9 16:34:52 CST 2022` | -

**1 - 测试方法论**

* 单元测试(unit testing)（与测试驱动开发紧密联系）
* 需求说明测试(spec testing)（更正式的名称是行为测试驱动(behavioral specifications), 通常和行为驱动测试有关）

**2 - 技术细节**

*  在调用  [`describe`](http://docs.seattlerb.org/minitest/Kernel.html#method-i-describe) 方法时会自动创建一个继承自 [`MiniTest::Spec`](http://docs.seattlerb.org/minitest/Minitest/Spec.html) 的测试类
* 一般最外层的 describe 是实现类的名称，内部嵌套的 describe 可以基于测试的上下文提供可读性更高的的信息
* 传递给 [`before`](http://docs.seattlerb.org/minitest/Minitest/Spec/DSL.html#method-i-before) 和 [`after`](http://docs.seattlerb.org/minitest/Minitest/Spec/DSL.html#method-i-after) 的代码块会在每次测试执行前或执行后运行
* 虽然可以用


**要点回顾**

* 使用 `describe` 方法创建测试类，使用 [`it`](http://docs.seattlerb.org/minitest/Minitest/Spec/DSL.html#method-i-it) 定义测试用例
* 虽然在需求说明测试中，断言仍然可用，但是更推荐使用注入到 Object 中的期望方法
* 在 [`Minitest::Expectations`](http://docs.seattlerb.org/minitest/Minitest/Expectations.html) 模块中，可以找到关于期望方法更详细的文档