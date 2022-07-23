# 第 1 章 建立套接字

|本期版本| 上期版本
|:---:|:---:
`Sat Jul 23 14:06:42 CST 2022` | -

## 1.1 Ruby 的套接字


* Ruby的套接字类在默认情况下并不会被载入

```ruby
require 'socket'
```

## 1.2 创建首个套接字


类型|含义
-----|-------
`Socket::SOCK_STREAM`| 数据流 TCP
`Socket::SOCK_DGRAM`| 数据报 UDP



## 1.6 端口

* 对每个套接字而言，IP地址和端口号的组合必须是唯一的

## 1.7 创建第二个套接字

* 可以让你使用符号（而非常量）来描述各种选项

符号|常量
---|----
`:INET` | `Socket::AF_INET`
`:STREAM` | `Socket::SOCK_STREAM`


## 1.8 文档

* `man 2 socket`