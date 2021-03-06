#!/bin/bash

sudo apt-get install --yes --force-yes software-properties-common

if ! [ -f /etc/apt/sources.list.d/virtualbox.list ]; then
  wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
  echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
fi

if ! [ -f /etc/apt/sources.list.d/dropbox.list ]; then
  echo "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/dropbox.list
  sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
fi

# Skype
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

# Asciinema
sudo add-apt-repository -y ppa:zanchey/asciinema

# SimpleScreenRecorder
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder

# Docker
if ! [ -f /etc/apt/sources.list.d/docker.list ]; then
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
  sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
fi
