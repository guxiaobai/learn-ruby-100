# Rake

|本期版本|上期版本
|:---:|:---:
`Tue Sep  5 17:13:51 CST 2023` | -

```ruby
namespace :main do
	task :name, [:first_name, :last_name] => [:pre_name] do |t, args|
	end
end
```

* [Rake includes the FileUtils module](https://ruby.github.io/rake/FileUtils.html)
* Additional rake ﬁles (with the ﬁle extension `.rake`)

## [Rake::DSL](https://ruby.github.io/rake/Rake/DSL.html)

命令|说明
---|---
`namespace` | 命名空间
`desc` | 描述
`task` | 任务， 通常使用符号命名
`multitask`| 任务，并行执行依赖
`directory` | 文件夹
`file` | 文件，通常是使用字符串
`rule` | 规则

## [Rake::Task](https://ruby.github.io/rake/Rake/Task.html)

命令|说明
---|---
`name` | 名字
`source` | 规则中的第一个
`prerequisites` | 依赖
`invoke` | 调用任务

## [Rake::TaskArguments](https://ruby.github.io/rake/Rake/TaskArguments.html)

命令|说明
---|---
`with_defaults` | 默认值
`extras` | 其他未命名参数

## [Rake::FileList](https://ruby.github.io/rake/Rake/FileList.html)

命令|说明
---|---
`exclude` | 排除
`include` | 包含
`ext` | 替换扩展名 [`String#ext`](https://ruby.github.io/rake/String.html#method-i-ext)


## Rules

```ruby
Rake.application.create_rule(*args, &block)
```

* 当文件是作为依赖时，如果没有定义任务，将尝试通过规则来生成任务
* 只有规则定义的文件存在时，才会生成规则



## Ref

* <https://github.com/ruby/rake>
* <https://ruby.github.io/rake/doc/rational_rdoc.html>
* <https://www.rubyguides.com/2019/02/ruby-rake/>
* [如何在 Rails 中寫 Rake Tasks](https://dwye.dev/post/rake/)