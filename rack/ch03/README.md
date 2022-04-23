# 03 中间件

|本期版本| 上期版本
|:---:|:---:
`Sat Apr 23 22:50:13 CST 2022` | -



## 3.1 一个简单的中间件

* 任何中间件本身必须式一个合法的 Rack 应用程序


## 3.3 为什么中间件

* 中间件可以实现通用的逻辑和业务逻辑进行分离

### 3.4 装配中间件

* `Rack::ContentLength` 能够自动设置响应头重的 `Content-Length`


**3.4.2 实现 Builder**

`@TODO`:  用 `inject` 方法简化  `to_app` - 

```ruby
@middlewares.reverse.inject(@app){ |app, middleware| middleware.new(app) }
```