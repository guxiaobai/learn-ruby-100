# 第 2 章 星期一：对象模型

|本期版本|上期版本
|:---:|:---:
`Sat Apr 23 00:15:41 CST 2022` | -

## 2.2 类的真相

> [modules\_and\_classes](https://docs.ruby-lang.org/en/3.1/syntax/modules_and_classes_rdoc.html)

### 2.2.3 常量

* 任何以大写字母开头的引用（包括类名和模块名）都是常量
* 常量的路径用**双冒号**进行分割， 可以用一个双冒号开头来表示路径的根位置
* [`Module#constants`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-constants) 返回**当前范围内**的所有常量
* [`Module.constants`](https://docs.ruby-lang.org/en/3.1/Module.html#method-c-constants) 返回当前程序中所有**顶层的常量**
* [`Module.nesting`](https://docs.ruby-lang.org/en/3.1/Module.html#method-c-nesting) 当前代码路径

### 2.2.4 对象和类的小结

* 对象就是一组[实例变量](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-instance_variables)外加一个指向其[类](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-class)的引用。对象的[方法](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-methods)并不存在于对象本身，而是存在于对象的类中。在类中这些方法被称为类的[实例方法](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-instance_methods)。
* 类就是一个对象（[Class](https://docs.ruby-lang.org/en/3.1/Class.html) 类的一个实例）外加一组实例方法和一个对其[超类](https://docs.ruby-lang.org/en/3.1/Class.html#method-i-superclass)的引用。Class 类是  Module 的子类，因此一个类是一个模块

### 2.2.5 使用命名空间

* [Loading](https://docs.ruby-lang.org/en/3.1/Kernel.html#module-Kernel-label-Loading): [`Kernel#load`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-load)、[`Kernel#require`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-require)
* [Pre-defined variables](https://docs.ruby-lang.org/en/3.1/globals_rdoc.html#label-Pre-defined+global+variables): `$LOAD_PATH - $:`、`$LOADED_FEATURES - $"`

## 2.3 小测验：缺失的接线

* [`Object#instance_variable_set`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-instance_variable_set)

## 2.4 调用方法时发生了什么

### 2.4.1 方法查找

* 首先在接收者的类中查找，然后再顺着[祖先链](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-ancestors)向上查找。


**模块与方法查找**

* 当把一个模块包含在一个类中时，Ruby 就会把这个模块加入到该类的祖先链中。
* [`Module#include`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-include): 包含它的类上方、[`Module#prepend`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-prepend): 包含它的类下方


**Kernel模块**

* Ruby 中有些方法可以随时随地进行调用: `Kernel.private_instance_methods`
* Object 类包含了 Kernel 模块，因此 Kernel 就进入了每个对象的祖先链。


### 2.4.2 执行方法

**self关键字**

* Ruby 的每一行代码都会在一个对象中执行，这个对象就是所谓的 `当前对象`。当前对象也可以用 `self` 表示
* **私有方法: 不能明确指定接收者来调用私有方法**

**顶层上下文**

* Ruby 程序开始运行时， Ruby 解释器会创建一个名为 `main` 的对象作为当前对象

**类定义与self**

* 在类和模块定义中（且在任何方法定义之外），self 的角色由这个类或模块本身担任

### 2.4.3 细化

> [Refinements](https://docs.ruby-lang.org/en/3.1/syntax/refinements_rdoc.html)

* 需要定义一个模块，然后在这个模块的定义中调用 `refine` 方法。
* 为了让这些变化生效，必须调用 `using` 方法。
