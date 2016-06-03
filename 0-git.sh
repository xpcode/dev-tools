#!/usr/bin/env bash

docker run -i -t daocloud.io/centos:7

yum update -y
yum install git -y
