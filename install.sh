#!/usr/bin/env bash

WHICH=$1
LINUX_DISTRO=$2
PWD=$HOME/dotfiles

if [ "$WHICH" == "vim" ]; then
  $PWD/vim/install.sh

elif [ "$WHICH" == "zsh" ]; then 
  if [ "$LINUX_DISTRO" == "" ]; then
    echo "Please select the linux distro"
  else
    $PWD/zsh/install.sh $LINUX_DISTRO
  fi

elif [ "$WHICH" == "tmux" ]; then
  $PWD/tmux/install.sh

elif [ "$WHICH" == "urxvt" ]; then
  if [ -d $HOME/.Xresources.d ]; then
    rm -rf $HOME/.Xresources.d
  fi
  if [ -d $HOME/.urxvt ]; then
    rm -rf $HOME/.urxvt
  fi
  ln -sr -f $PWD/urxvt $HOME/.urxvt
  ln -sr -f $PWD/Xresources.d $HOME/.Xresources.d
  ln -sr -f $PWD/Xresources $HOME/.Xresources
  xrdb $HOME/.Xresources

elif [ "$WHICH" == "X11" ]; then
  ln -sr -f $PWD/X11/xinitrc $HOME/.xinitrc
  ln -sr -f $PWD/X11/xsession $HOME/.xsession
  ln -sr -f $PWD/X11/xsessionrc $HOME/.xsessionrc
  ln -sr -f $PWD/X11/xprofile $HOME/.xprofile

elif [ "$WHICH" == "ranger" ]; then
  $PWD/ranger/install.sh

elif [ "$WHICH" == "rofi" ]; then
  $PWD/rofi/install.sh

elif [ "$WHICH" == "all" ]; then
  $PWD/install.sh X11
  $PWD/install.sh zsh $LINUX_DISTRO
  $PWD/install.sh vim
  $PWD/install.sh tmux
  $PWD/install.sh urxvt
  $PWD/install.sh ranger
  $PWD/install.sh rofi
fi


