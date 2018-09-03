#!/bin/bash

PWD=$HOME/dotfiles/ranger

if [ -d $HOME/.config ]; then
  ln -sr -f $PWD/rc.conf $HOME/.config/ranger/rc.conf
fi
