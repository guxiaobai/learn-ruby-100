# 第 4 章 星期三：代码块

|本期版本|上期版本
|:---:|:---:
`Sat Apr 23 01:43:52 CST 2022` | -

## 4.1 学习代码块

### 4.1.2 代码块的基础知识

* [`yield`](https://docs.ruby-lang.org/en/3.1/keywords_rdoc.html)、[`Kernel#block_given?`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-block_given-3F )

## 4.3 代码块是闭包

### 4.3.1 作用域

* [`Kernel#local_variables`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-local_variables): 跟踪绑定的名字
* 一旦进入一个新的作用域，原先的绑定会被替换为一组新的绑定

### 4.3.2 作用域门

* 每当程序进入（或离开）类定义、模块定义、方法时，就会发生作用域切换。
* 这三种情况分别以 `class`、`module` 和 `def` 关键字作为标志。

### 4.3.3 扁平化作用域

* [`Class.new`](https://docs.ruby-lang.org/en/3.1/Class.html#method-c-new)、[`Module#define_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-define_method)、[`Module.new`](https://docs.ruby-lang.org/en/3.1/Module.html#method-c-new)
* 使用方法调用来替代作用域门，就可以让一个作用域看到另一个作用域里面的变量

### 4.3.4 闭包小结

* 如果一个扁平作用域中定义了多个方法，把这些方法用一个作用域门保护起来，他们可以共享绑定，这种技巧称为`共享作用域`

## 4.4 instance_eval 方法

> 在一个对象的上下文中执行块, 实例变量是依赖于当前对象 self 的

* [`BasicObject#instance_eval`](https://docs.ruby-lang.org/en/3.1/BasicObject.html#method-i-instance_eval)
* [`BasicObject#instance_exec`](https://docs.ruby-lang.org/en/3.1/BasicObject.html#method-i-instance_exec): 允许对代码块传入参数

## 4.5 可调用对象

### 4.5.1 Proc对象

* 尽管 Ruby 中绝大多数东西都是对象，但是代码块却不是。
* [`Proc`](https://docs.ruby-lang.org/en/3.1/Proc.html) 就是由块转换来的对象

**&操作符**

* 参数必须是参数列表中的最后一个，且以 & 符号开头 [Block Argument](https://docs.ruby-lang.org/en/3.1/syntax/methods_rdoc.html#label-Block+Argument)


这是一个 Proc 对象，我想把它当成代码块使用。 [Proc to Block Conversion](https://docs.ruby-lang.org/en/3.1/syntax/calling_methods_rdoc.html#label-Proc+to+Block+Conversion)、

```ruby
def hi
	yield
end
name = Proc.new { puts "success"}
hi &name
```

> [Conversion of other objects to procs](https://docs.ruby-lang.org/en/3.1/Proc.html#class-Proc-label-Conversion+of+other+objects+to+procs)

```ruby
[1, 2, 3, 4, 5, 6].select(&:even?)
```
### 4.5.2 Proc 与 Lambda 的对比

> [Lambda and non-lambda semantics](https://docs.ruby-lang.org/en/3.1/Proc.html#class-Proc-label-Lambda+and+non-lambda+semantics)

* 用 lambda 方法创建的 Proc 称为 lambda，而用其他方式创建的则称为 proc
* 可以用 [`Proc#lambda?`](https://docs.ruby-lang.org/en/3.1/Proc.html#method-i-lambda-3F) 方法检测 Proc 是不是 lambda

**Proc、Lambda 与 return**

* 在 lambda 中，return 仅仅表示从这个 lambda 中返回
* 在 proc 中，return 是从定义 proc 的作用域中返回。**不使用 return 可以规避这个问题**

**Proc、Lambda 和 参数数量**

* [`Proc#arity`](https://docs.ruby-lang.org/en/3.1/Proc.html#method-i-arity)
* 如果调用 lambda 时的参数数量不对，就会抛出 ArgumentError 错误

**Proc与Lambda 对比之结论**

* **很多 Ruby 程序员把 lambda 作为第一选择，除非他们需要使用 proc 的某些特殊功能**

### 4.5.3 Method 对象

> [How to pass arguments to methods in ruby and how it affects their arity](https://blog.saeloun.com/2020/01/27/how-to-pass-arguments-to-methods-in-ruby-and-how-it-affects-the-arity.html)

* [`Object#method`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-method)、 [`Kernel#singleton_method`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-singleton_method) : 可以获得一个用 [`Method`](https://docs.ruby-lang.org/en/3.1/Method.html) 对象表示的方法, 可以在以后使用 [`Method#call`](https://docs.ruby-lang.org/en/3.1/Method.html#method-i-call) 方法对它进行调用
* 可以通过  [`Method#to_proc`](https://docs.ruby-lang.org/en/3.1/Method.html#method-i-to_proc) 方法转换为 Proc。另外还可以通过 `define_method` 方法把代码块转换为方法
* Method 对象会在他自身所在对象的作用域中执行

**自由方法**

从最初定义它的类或者模块中脱离了

* [`Method#unbind`](https://docs.ruby-lang.org/en/3.1/Method.html#method-i-unbind): 可以把一个方法变成自由方法
* [`Module#instance_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-instance_method): 获得一个自由方法
* `UnboundMethod#bind`
* **还可以把 [`UnboundMethod`](https://docs.ruby-lang.org/en/3.1/UnboundMethod.html) 对象传给 `Module#define_method` 方法，从而实现绑定**

## Ref

* [Understanding Ruby's idiom: array.map(&:method)](https://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/)
* [Idiomatic Ruby: writing beautiful code](https://www.codementor.io/@leandrotk100/idiomatic-ruby-writing-beautiful-code-pwdt8a8kq)

