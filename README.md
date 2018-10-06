# Kombucha

_Simple aliases collection for [YeAST](https://github.com/yvan-sraka/YeAST)_

## What's that?

This repository contains scripts that offer a standard way to work with common UNIX utils.

The idea is to always take input as first positionnal argument and write the output on standard output, e.g:

```shell
@gcc main.c

# ... is equivalent to:

gcc main.c -o a.out && ./a.out
```

Kombucha aliases always start by `@` symbol to not enter in conflict with existent softwares in your `PATH`.

By combining theses utils together we intent to help the writing of simpler and more robust build suites.

This repository contains all aliases, but the simple tool to install and update them is contained in [YeAST](https://github.com/yvan-sraka/YeAST/blob/master/kombucha) one:

```makefile
#! /usr/bin/env yeast
#! make -sf $0 $1

init:
    git clone https://github.com/yvan-sraka/Kombucha.git ~/.kombucha

update:
    cd ~/.kombucha ; git pull -r
```

The idea of using GitHub as a service to handle aliases was directly inspired by [HomeBrew Formula](https://github.com/Homebrew/homebrew-core/tree/master/Formula)!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Get YeAST binary from source:

```shell
git clone git@github.com:yvan-sraka/YeAST.git
cd YeAST
./configure
make
sudo make install
```

### Usage

```shell
export PATH="$HOME/.kombucha:$PATH"
# That's all!
```

## Contributing

Please read [CONTRIBUTING.md](https://github.com/yvan-sraka/Kombucha/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* [Yvan Sraka](https://github.com/yvan-sraka)

See also the list of [contributors](https://github.com/yvan-sraka/Kombucha/graphs/contributors) who participated in this project.

## License

This project is licensed under the 3rd version of GPL License - see the [LICENSE](https://github.com/yvan-sraka/Kombucha/blob/master/LICENSE) file for details.
