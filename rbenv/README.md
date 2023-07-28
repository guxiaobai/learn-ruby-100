# rbenv

|本期版本|上期版本
|:---:|:---:
`Fri Jul 28 23:03:03 CST 2023` | -


## rbenv


```bash
rbenv init - fish | source
```


## ruby-build

> [Suggested build environment](https://github.com/rbenv/ruby-build/wiki#suggested-build-environment)

```bash
export RUBY_CONFIGURE_OPTS="--disable-install-doc --disable-install-rdoc"
```


```bash
set -Ux RUBY_CONFIGURE_OPTS --disable-install-doc --disable-install-rdoc \
	--with-openssl-dir=(brew --prefix openssl@1.1)
```

## XQuartz

```bash
if which rbenv > /dev/null
    rbenv init - fish | source
end
```


## Ref

* <https://github.com/rbenv/rbenv>、<https://github.com/rbenv/rbenv-installer>
* <https://github.com/rbenv/ruby-build>
* <https://github.com/rbenv/rbenv-vars>
* <https://github.com/AndorChen/rbenv-china-mirror>
* [How to automate rbenv installations](https://relativkreativ.at/articles/how-to-automate-rbenv-installations)
