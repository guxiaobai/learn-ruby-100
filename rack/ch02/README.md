# 02 Rack 初探

|本期版本|上期版本
|:---:|:---:
`Sat Apr 23 20:23:53 CST 2022` | -

## 2.1 环境

* 我们可以看到，env 包含 key 可以分为两类，一类是大写的类 CGI 的头，还有一类则 是 rack 特定的环境

## 2.3 Response

### 2.3.1 响应体

`Content-Length` 的值必须为字符串

```ruby
body.bytesize.to_s
```

### 2.3.2 状态码

直接进行重定向

```ruby
redirect(target, status=302)
```

## Ref

* [`Rack::Request`](https://www.rubydoc.info/github/rack/rack/Rack/Request)
* [`Rack::Response`](https://www.rubydoc.info/github/rack/rack/Rack/Response)