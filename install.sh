#!/usr/bin/env bash

WHICH=$1
LINUX_DISTRO=$2
PWD=$HOME/dotfiles

if [ "$WHICH" == "vim" ]; then
  ./vim/install.sh

elif [ "$WHICH" == "zsh" ]; then 
  if [ "$LINUX_DISTRO" == "" ]; then
    echo "Please select the linux distro"
  else
    ./zsh/install.sh $LINUX_DISTRO
  fi

elif [ "$WHICH" == "tmux" ]; then
  ./tmux/install.sh

elif [ "$WHICH" == "urxvt" ]; then
  if [ -d $HOME/.Xresources.d ]; then
    rm -rf $HOME/.Xresources.d
  fi
  ln -sr -f $PWD/Xresources.d $HOME/.Xresources.d
  ln -sr -f $PWD/Xresources $HOME/.Xresources
  xrdb $HOME/.Xresources

elif [ "$WHICH" == "X11" ]; then
  ln -sr -f $PWD/X11/xinitrc $HOME/.xinitrc
  ln -sr -f $PWD/X11/xsession $HOME/.xsession
  ln -sr -f $PWD/X11/xsessionrc $HOME/.xsessionrc
  ln -sr -f $PWD/X11/xprofile $HOME/.xprofile

elif [ "$WHICH" == "all" ]; then
  ./install.sh X11
  ./install.sh zsh $LINUX_DISTRO
  ./install.sh vim
  ./install.sh tmux
  ./install.sh urxvt
fi


