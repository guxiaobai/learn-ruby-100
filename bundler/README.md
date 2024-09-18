# bundler

|本期版本| 上期版本
|:---:|:---:
`Thu Jul 21 09:03:30 CST 2022` | -

* `bundler env`
* [Specifying a Ruby Version](https://bundler.io/gemfile_ruby.html#specifying-a-ruby-version)

```bash
bundle config path vendor/bundle
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
```

```bash
bundle config set --local deployment 'true'
```


---

```ruby
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __FILE__)
require 'bundler/setup'
Bundler.require(:default)
```

* <https://ruby-china.org/topics/34681>
* <https://bundler.io/guides/bundler_setup.html>


## Ref

* [https://bundler.io/](https://bundler.io/)
* [Bundler 到底是怎么工作的 (暨 Ruby 依赖管理历史回顾)](https://ruby-china.org/topics/28453)
* [Bundler 的作用及原理](https://ruby-china.org/topics/25530)