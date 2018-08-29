#!/usr/bin/env bash

THIS_PATH=$HOME/dotfiles/zsh
ZSH_PATH=$HOME/.oh-my-zsh

if [ ! -d $ZSH_PATH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# zsh-completions
if [ ! -d $ZSH_PATH/custom/plugins/zsh-completions ]; then
  git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
fi

# zsh-autosuggestions
if [ ! -d $ZSH_PATH/custom/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# zsh-syntax-highlighting
if [ ! -d $ZSH_PATH/custom/plugins/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

LINUX_DISTRO=$1

if [ "$LINUX_DISTRO" == "debian" ]; then
  ln -sr -f $THIS_PATH/init_debian.zsh $HOME/.zshrc
fi

ln -sr -f $THIS_PATH/themes/yoda.zsh-theme $HOME/.oh-my-zsh/custom/themes/yoda.zsh-theme
