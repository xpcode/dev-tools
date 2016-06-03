#!/usr/bin/env bash

# dependencies
yum install which -y

# install
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`
./install.sh