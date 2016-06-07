#!/usr/bin/env bash

# centOS 7.1
vi /usr/lib/systemd/system/docker.service

# add   -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375

# resource
systemctl daemon-reload
service docker restart

# ps -ef | grep docker
systemctl restart docker
docker start portus_db_1 portus_web_1 portus_crono_1 portus_registry_1
