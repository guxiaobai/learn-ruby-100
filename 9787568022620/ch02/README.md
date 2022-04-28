# 2 编译

* `ruby --dump parsetree -e 'puts 2+2'`
* `NODE_SCOPE`: 新的作用域 
* `NODE_FCALL`: 函数调用

Ruby 会遵循以下模式把函数模式编译为 YARV 指令

* 压入接收者
* 压入参数
* 调用方法或函数

## 2.4 编译块调用

* `ruby --dump parsetree -e '10.times{|n| puts n}'`

* `NODE_FCALL`: 代表函数调用
* `NODE_CALL`: 方法调用 


## 2.5 本地表

* <Arg> 标注方法或块参数
* <Rest> 使用星号操作符一起传入的未命名参数数组
* <Post> 跟随在星号数组之后的标准参数
* <Opt=i> 定义默认值的参数





## Ref

* [https://github.com/awesome-print/awesome\_print](https://github.com/awesome-print/awesome_print)
* [https://docs.ruby-lang.org/en/2.7.0/RubyVM.html](https://docs.ruby-lang.org/en/2.7.0/RubyVM.html)
* [https://docs.ruby-lang.org/en/2.7.0/RubyVM/AbstractSyntaxTree.html](https://docs.ruby-lang.org/en/2.7.0/RubyVM/AbstractSyntaxTree.html)
* [https://docs.ruby-lang.org/en/2.7.0/RubyVM/AbstractSyntaxTree/Node.html](https://docs.ruby-lang.org/en/2.7.0/RubyVM/AbstractSyntaxTree/Node.html)

**misc**

* [Inside RubyVM](https://sitaramshelke.medium.com/inside-rubyvm-967b25e234db)

