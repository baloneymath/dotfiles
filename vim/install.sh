#!/usr/bin/env bash

PATH_PIKA=$HOME/pika-vim
PATH_PIKA_CUSTOM=$HOME/pika-vim/custom

if [ ! -d $PATH_PIKA ]; then
  git clone --depth=1 https://github.com/leomao/pika-vim.git $PATH_PIKA
  $PATH_PIKA/cleanup.sh
  $PATH_PIKA/deploy.py
fi

if [ -d $PATH_PIKA_CUSTOM ]; then
  if [ -L $PATH_PIKA_CUSTOM ]; then
    rm $PATH_PIKA_CUSTOM
  else
    rm -rf $PATH_PIKA_CUSTOM
  fi
fi

mkdir $PATH_PIKA_CUSTOM
ln -sr -f $HOME/dotfiles/vim/custom/plugin.vim $PATH_PIKA_CUSTOM/plugin.vim
vim +PlugInstall +qall
ln -sr -f $HOME/dotfiles/vim/custom/local.vim $PATH_PIKA_CUSTOM/local.vim
