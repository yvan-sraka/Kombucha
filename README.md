# Kombucha

_Simple aliases collection for [YeAST](https://github.com/yvan-sraka/YeAST)_

## What's that?

This repository contains scripts that offer a standard way to work with common UNIX utils.

The first idea is to always take input as first positionnal argument and write the output on standard output, e.g:

```shell
@gcc main.c

# ... is equivalent to:

gcc main.c -o a.out && ./a.out
```

The second purpose is to offer the same user experience than [Haskell Stack](https://docs.haskellstack.org/en/stable/README/), e.g. [this script](https://github.com/yvan-sraka/uncomment) self install its build tools and dependencies at first run:

```haskell
#!/usr/bin/env stack
-- stack --install-ghc runghc --package regex-compat
import Text.Regex
main = interact (\xs -> subRegex (mkRegex "<!--.*(.*\n)*.*-->") xs "")
```

We try to provide an equivalent structure with others common language stacks, like e.g. Python:

```python
#!/usr/bin/env @python
# stack --virtual-env pypy3 --pip-install requirements.txt
print("Wow, it was smooth! I'm ready to build stuffs :)")
```

Kombucha aliases always start by `@` symbol to not enter in conflict with existent softwares in your `PATH`.

By combining theses utils together we intent to help the writing of simpler and more robust build suites.

The idea of using GitHub as a service to handle aliases was directly inspired by [HomeBrew Formula](https://github.com/Homebrew/homebrew-core/tree/master/Formula)!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Get YeAST binary from source:

```shell
curl https://raw.githubusercontent.com/yvan-sraka/YeAST/master/install.sh -sSf | sh
```

### Build

You need an [Haskell build environment](https://www.haskell.org/downloads) on your computer, then just:

```shell
ghc kombucha.hs -o kombucha
```

You can also download an executable directly on the [release page](https://github.com/yvan-sraka/cleopatra/releases) of the repository.

### Usage

```shell
kombucha <COMMAND>
```

#### Flags

- `-h`, `--help` Prints help information String
- `-V`, `--version` Prints version information

#### Commands

- `update` Update aliases collection contained in `.kombucha` folder

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
