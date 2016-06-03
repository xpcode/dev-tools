#!/usr/bin/env bash

# centOS 7.1
vi /usr/lib/systemd/system/docker.service

# add   -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375

# resource
systemctl daemon-reload
service docker restart

# ps -ef | grep docker