# 第 5 章 星期四：类定义

|本期版本| 上期版本
|:---:|:---:
`Sat Apr 23 14:06:36 CST 2022` | -

## 5.1 揭秘类定义

### 5.1.1 深入类定义

* 定义类（或模块）时，类本身充当当前对象 `self` 的角色

### 5.1.2 当前类

* 定义一个方法时，那么个方法将成为当前类的一个实例方法
* [`Module#class_eval`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-class_eval)、[`Module#class_exec`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-class_exec) 在一个已经存在类的上下文中执行一个块

### 5.1.3 类实例变量

* Ruby 解释器假定所有的实例变量都属于当前对象 `self`
* **类的实例变量不同于类的对象的实例变量**

## 5.3 单件方法

### 5.3.1 使用单件方法

* **只对单个对象生效的方法，称为单件方法(Singleton Method)**
* [`Object#singleton_methods`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-singleton_methods)、[`Object#define_singleton_method`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-define_singleton_method)

### 5.3.2 类方法的真相

* **类方法的实质是：它是一个类的单件方法**

## 5.4 单件类

> [搞懂Ruby的单例类](https://www.junmajinlong.com/ruby/ruby_singleton_class/)

### 5.4.2 揭秘单件类

*  用 [`Object.singleton_class`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-singleton_class) 方法或 `class << ` 语法获得

### 5.4.3 补充方法查找

**单件类和方法查找**

* 如果对象有单件类，Ruby不是从它所在的类开始查找，而是从对象的单件类中开始查找。如果Ruby在单件类中找不到这个方法，那么它会沿着祖先链向上来到单件类的超类（这个对象所在的类）

**单件类和继承**

* 单件类的超类就是超类的单件类

**类属性**

```ruby
class MyClass
	class << self
		attr_accessor :c
	end
end

MyClass.c = "It works"
```


## 5.5 小测验：模块的麻烦

* 当一个类包含一个模块时，它获得的是该模块的实例方法


### 5.5.1 小测验答案

 类扩展通过向类的单件类添加模块来定义类方法
 
 ```ruby
 class MyClass
 	class << self
 		include MyModule
 	end
 end
 ```
 
 * [`Object#extend`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-extend) 在接收者的单件类中包含模块的快捷方式

## 5.6 方法包装器


### 5.6.1 方法别名

* [`Module#alias_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-alias_method) 、 [`alias`](https://docs.ruby-lang.org/en/3.1/keywords_rdoc.html): 第一参数方法的新名字，第二个参数是方法的原始名字
* 别名方法引用的还是原始方法
* [`Kernel#caller`](https://docs.ruby-lang.org/en/3.1/Kernel.html#method-i-caller)

### 5.6.2 更多的方法包装器

* 如果在细化的方法中调用 `super` 方法，则会调用那个没有细化的原始方法


 