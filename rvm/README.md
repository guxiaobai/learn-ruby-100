# Ruby Version Manager (RVM)

|本期版本| 上期版本
|:---:|:---:
`TWed Jun 22 11:53:05 CST 2022` | -

### Ubuntu

`20.04 LTS`

```
apt-get install gnupg2 curl
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

### macOS

```bash
brew install gpg2 curl
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```



### Fish Shell

```bash
curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish
echo "rvm default" >> ~/.config/fish/config.fish
```

## Ref

* [http://www.rvm.io/](http://www.rvm.io/)
* [Fish Shell](https://rvm.io/integration/fish)
