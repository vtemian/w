#!/bin/bash

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password pass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pass'
sudo apt-get -y install mysql-server

apt-get install --yes --force-yes \
  build-essential \
  python-dev \
  libmysqlclient-dev \
  python-pip

pip install virtualenvwrapper
