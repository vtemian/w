#!/bin/bash

if ! [ -d $HOME/.ssh ]; then
  echo "You forgot to restore your SSH key ;)"
  exit 1
fi

cd setup

./cleanup.sh
./add-repositories.sh
./dev.sh
./packages.sh
./virtualbox.sh
./vagrant.sh
./docker.sh
