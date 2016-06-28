#!/usr/bin/env bash

nvm install v6.2.1

# or https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server
wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
tar xzvf node-v* && cd node-v*
sudo yum install gcc gcc-c++
./configure
make
sudo make install