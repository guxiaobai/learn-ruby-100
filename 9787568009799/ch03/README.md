# 第 3 章 星期二：方法

|本期版本|上期版本
|:---:|:---:
`Sat Apr 23 00:53:00 CST 2022` | -

## 3.2 动态方法

### 3.2.1 动态调用方法

* [`Object#send`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-send)、 [`Object#public_send`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-public_send)

### 3.2.2 动态定义方法

* [`Module#define_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-define_method)

### 3.2.3 重构 Computer 类

* [`Enumerable#grep`](https://docs.ruby-lang.org/en/3.1/Enumerable.html#method-i-grep)

## 3.3 method_missing 方法

* [`BasicObject#method_missing`](https://docs.ruby-lang.org/en/3.1/BasicObject.html#method-i-method_missing)

### 3.3.4 再次重构 Computer 类

* [`Object#respond_to?`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-respond_to-3F)、[`Object#respond_to_missing?`](https://docs.ruby-lang.org/en/3.1/Object.html#method-i-respond_to_missing-3F)
* [`Module#const_missing`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-const_missing)

## 3.5 白板类

### 3.5.2 删除方法

* [`Module#undef_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-undef_method) : 删除所有（包括继承而来的）方法
* [`Module#remove_method`](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-remove_method): 只删除接收者自己的方法，而保留继承来的方法。

## 3.6 小结

### 3.6.1 对比动态方法与幽灵方法

* 在 `method_missing` 中总是调用 `super` 方法；总是重新定义 `respond_to_missing?` 方法
* 在可以使用动态方法的时候，尽量使用动态方法；除非必须使用幽灵方法，否则尽量不要使用它