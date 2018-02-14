#! /usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  echo "Brew already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ -x "$(command -v zsh )" ]; then
  echo "Zsh already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
env RCRC=$HOME/.dotfiles/rcrc rcup

```
./macos.sh
```

brew bundle

# Install vim-plug Plugin Manager
$  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

