# Mysql2

|本期版本|上期版本
|:---:|:---:
`Wed Apr 27 20:45:02 CST 2022` | -


## macOS

> `Big Sur`

### 方案1: 仅安装客户端

> `/usr/local/opt/mysql-client/lib/libssl.dylib`

```bash
brew install mysql-client
fish_add_path /usr/local/opt/mysql-client/bin
```

### 方案2: 安装服务端

```bash
brew install mysql
```

**额外安装 openssl@1.1, 并增加编译参数（也可用方案1替代）**

> `/usr/local/opt/openssl@1.1/lib/libssl.dylib`

```bash
brew info openssl@1.1

# Gem
gem install mysql2 -v 0.5.3 -- --with-ldflags=-L/usr/local/opt/openssl@1.1/lib

# Bundler
bundle config set build.mysql2 --with-ldflags=-L/usr/local/opt/openssl@1.1/lib
```

## mysql_config

> [https://dev.mysql.com/doc/refman/8.0/en/mysql-config.html](https://dev.mysql.com/doc/refman/8.0/en/mysql-config.html)

`--with-mysql-config`

```bash
# mysql-client
/usr/local/opt/mysql-client/bin/mysql_config

# mysql
/usr/local/bin/mysql_config
```

## Debug

```
otool -L /usr/local/bin/mysql
otool -L /usr/local/opt/mysql-client/bin/mysql
```

## Ref

* [https://github.com/brianmario/mysql2](https://github.com/brianmario/mysql2)
* [https://guides.rubygems.org/command-reference/#gem-install](https://guides.rubygems.org/command-reference/#gem-install)
* [https://bundler.io/man/bundle-config.1.html#BUILD-OPTIONS](https://bundler.io/man/bundle-config.1.html#BUILD-OPTIONS)