# 第3章 服务器生命周期

**典型生命周期**

* 创建、绑定、侦听、接受、关闭

## 3.1 服务器绑定


### 3.1.1 该绑定到哪个端口

* 不要使用 0 ~ 1024 之间的端口。这些端口是作为熟知(well-known)端口并保留给系统使用
* 不要使用 49000 ~ 65535 之间的端口。这些都是临时(ephemeral)端口

### 3.1.2 该绑定到哪个地址

* 如果你希望侦听每一个接口，那么可以使用 `0.0.0.0`

## 3.3 接受连接

### 3.3.2 accept 调用返回一个数组

* 第一个元素是建立好的连接
* 第二个元素是一个 Addrinfo 对象。该对象描述了客户端连接的远程地址

### 3.3.6 accept 循环

```ruby
loop do
	connection, _ = server.accept
	connection.close
end
```

## 3.5 Ruby 包装器

### 3.5.1 服务器创建

```ruby
TCPServer.new(4481)
```

* `TCPServer#accept` 只返回连接

###3.5.2 连接处理

```ruby
Socket.accept_loop(server) do |connection|
	connection.close
end
```

### 3.5.3 合而为一

```ruby
Socket.tcp_server_loop(4481) do | connection|
	connection.close
end
```