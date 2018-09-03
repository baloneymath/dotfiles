#!/bin/bash

PWD=$HOME/dotfiles/rofi

if [ -d $HOME/.config ]; then
  ln -sr -f $PWD/config $HOME/.config/rofi/config
fi
