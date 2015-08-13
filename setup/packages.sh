#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install --yes --force-yes \
  nfs-kernel-server \
  skype \
  gimp \
  curl tree htop \
  tmux \
  git git-core \
  vim-nox  \
  ubuntu-restricted-extras \
  transmission \
  linux-image-extra-`uname -r` \
  asciinema \
  lxc-docker \
  p7zip \
  simplescreenrecorder \
  shutter \
  i3 \
  vlc \
  redshift \
  terminator \
  fonts-font-awesome \
  xclip

sudo apt-get clean
sudo apt-get autoremove
