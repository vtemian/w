#!/bin/bash

if ! [ -d $HOME/.ssh ]; then
  echo "You forgot to restore your SSH key ;)"
  exit 1
fi

cd setup

./cleanup
./add-repositories
./dev
./packages
./virtualbox
./vagrant
./docker
