# 第 6 章 星期五：编写代码的代码

|本期版本| 上期版本
|:---:|:---:
`Sat Apr 23 14:22:08 CST 2022` | -

## 6.2 Kernel#eval 方法

* [`Kernel#eval`](https://docs.ruby-lang.org/en/3.0/Kernel.html#method-i-eval)

**6.2.2 绑定对象**

* [`Kernel#binding`](https://docs.ruby-lang.org/en/3.0/Kernel.html#method-i-binding) 可以用来创建 [`Binding`](https://docs.ruby-lang.org/en/3.0/Binding.html) 对象
* [`TOPLEVEL_BIONDING`](https://docs.ruby-lang.org/en/3.0/globals_rdoc.html#label-Pre-defined+global+constants) 表示顶级作用域的 Binding 对象

**6.2.5 eval  方法的麻烦**

> [Ruby 2.7 removes taint checking mechanism](https://blog.saeloun.com/2020/02/18/ruby-2-7-access-and-setting-of-safe-warned-will-become-global-variable.html)

* [ERB](https://docs.ruby-lang.org/en/3.0/ERB.html)


## 6.7 钩子方法

* [`Class#inherited`](https://docs.ruby-lang.org/en/3.0/Class.html#method-i-inherited): 继承
* [`Module#included`](https://docs.ruby-lang.org/en/3.0/Module.html#method-i-included)、[`Module#prepended`](https://docs.ruby-lang.org/en/3.0/Module.html#method-i-prepended)
* [`Module#extend_object`](https://docs.ruby-lang.org/en/3.0/Module.html#method-i-extend_object)