#!/usr/bin/env bash

LINUX_DISTRO=$1

./vim/install.sh
./tmux/install.sh
./zsh/install.sh $LINUX_DISTRO

