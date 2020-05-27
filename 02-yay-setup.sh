#!/bin/bash

sudo pacman --sync --refresh --sysupgrade --noconfirm
sudo pacman --sync --noconfirm --needed base-devel

YAY_DIR=$HOME/Yay
if [ ! -d $YAY_DIR ]; then
  git clone https://aur.archlinux.org/yay.git $YAY_DIR
  cd $YAY_DIR
  makepkg -si --noconfirm
fi
