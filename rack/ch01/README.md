# 01 简介

|本期版本|上期版本
|:---:|:---:
`Wed Apr 27 20:45:02 CST 2022` | -

## 1.3 一试

### 1.3.2 Handler

```ruby
Rack::Handler.constants
```

### 1.3.3 一个可被 call 的对象

* 一个 Rack 应用程序是一个 Ruby 对象，只要这个对象能够响应 call

### 1.3.4 返回一个数组

* 这个可被 call 的对象需要接受一个参数，即环境(environment)对象；需要返回一个数组


