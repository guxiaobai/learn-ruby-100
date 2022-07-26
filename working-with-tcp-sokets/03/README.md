# 第3章 服务器生命周期

|本期版本| 上期版本
|:---:|:---:
`Tue Jul 26 17:05:17 CST 2022` | -

**典型生命周期**

* 创建、绑定、侦听、接受、关闭

## 3.1 服务器绑定

```ruby
# 创建一个C结构体来保存用于侦听的地址
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')

# 执行绑定
socket.bind(addr)
```

* 其他套接字便不能使用此端口，否则会产生异常 `Errno::EADDRINUSE`

```ruby
Errno.constants
```


### 3.1.1 该绑定到哪个端口

* 任何在 0 ~ 65535 之间的端口都可以使用
* 不要使用 0 ~ 1024 之间的端口。这些端口是作为熟知(well-known)端口并保留给系统使用
* 不要使用 49000 ~ 65535 之间的端口。这些都是临时(ephemeral)端口

### 3.1.2 该绑定到哪个地址

* 当你绑定到某个由IP地址所描述的特定接口时，套 接字就只会在该接口上进行侦听，而忽略其他接口
* 如果你希望侦听每一个接口，那么可以使用 `0.0.0.0`

## 3.2 服务器侦听

```ruby
# 告诉套接字侦听接入的连接
socket.listen(5)
```

### 3.2.1 侦听队列

* 待处理的连接列表被称作侦听队列
* 如果新的客户端连接到达且侦听队列 已满，那么客户端将会产生 `Errno::ECONNREFUSED`

### 3.2.2 侦听队列长度

* 通过在运行时查看 `Socket::SOMAXCONN` 可以获知当前所允许的最大的侦听队列长度



## 3.3 接受连接

```ruby
connection, _ = server.accept
```

### 3.3.1 以阻塞方式接受连接

* accept调用是阻塞式的。在它接收到一个新的连接之前，它会一直 阻塞当前线程

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

## 3.4 关闭服务器

* 一旦服务器接受了某个连接并处理完毕，那么最后一件事就是关闭该 连接。

## 3.5 Ruby 包装器

### 3.5.1 服务器创建

```ruby
TCPServer.new(4481)
```

* `TCPServer#accept` 只返回连接
* Ruby默认将侦听队列长度设置为5。如果需要更长的侦听队列，可以调用TCPServer#listen

###3.5.2 连接处理

```ruby
Socket.accept_loop(server) do |connection|
	connection.close
end
```

* 要注意连接并不会在每个代码块结尾处自动关闭。传递给代码块的参 数和accept调用的返回值一模一样。

### 3.5.3 合而为一

```ruby
Socket.tcp_server_loop(4481) do | connection|
	connection.close
end
```