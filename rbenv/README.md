# rbenv

|本期版本|上期版本
|:---:|:---:
`Sun Apr 24 10:25:58 CST 2022` | -

## macOS

> `Big Sur`


### Install

**1 - Using Package Managers**

```bash
brew install rbenv
```

**2-Basic GitHub Checkout**

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

fish_add_path ~/.rbenv/bin
```

### Plugins

```bash
git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
git clone https://github.com/andorchen/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-china-mirror
```

### Options

> `ruby-build`([Suggested build environment](https://github.com/rbenv/ruby-build/wiki#suggested-build-environment))

```
set -Ux RUBY_CONFIGURE_OPTS --disable-install-doc --with-openssl-dir=(brew --prefix openssl@1.1)
```

> `fish` - `rbenv init`

```
echo -e "\n# Rbenv" | tee -a ~/.config/fish/config.fish
echo 'rbenv init - fish | source' | tee -a ~/.config/fish/config.fish
```



## Ref

* [rbenv](https://github.com/rbenv/rbenv)
* [ruby-build](https://github.com/rbenv/ruby-build)
* [rbenv-vars](https://github.com/rbenv/rbenv-vars)
* [rbenv-china-mirror](https://github.com/AndorChen/rbenv-china-mirror)

**misc**

* [How to automate rbenv installations](https://relativkreativ.at/articles/how-to-automate-rbenv-installations)