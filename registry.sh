#!/usr/bin/env bash

# create cert, must ben CN.
openssl req -newkey rsa:2048 -x509 -nodes -days 3560 -out nginx.crt -keyout nginx.key

# run non-auth registry
docker run -d -p 5000:5000 -v `pwd`/data:/var/lib/registry --restart=always --name registry daocloud.io/registry:2

# run auth registry
docker run -d -p 5000:5000 --restart=always --name registry \
   -v `pwd`/auth:/auth \
   -v `pwd`/data:/var/lib/registry \
   -v `pwd`/certs:/certs \
   -e REGISTRY_AUTH=htpasswd \
   -e REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" \
   -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
   -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
   -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
   daocloud.io/registry:2

# run htpasswd
docker run --entrypoint htpasswd daocloud.io/registry:2 -Bbn chenhf 666666  > auth/htpasswd

# pull with --insecure-registry 139.129.61.221:5000
docker pull 139.129.61.221:5000/yonyou/fe:1.0

# push with --insecure-registry 139.129.61.221:5000
docker tag yonyou/fe:1.0 139.129.61.221:5000/yonyou/fe:1.0
docker push 139.129.61.221:5000/yonyou/fe:1.0

# centos 7.1
yum update -y
curl -fsSL https://get.docker.com/ | sh
yum install docker-registry -y

# yum添加源
yum install epel-release -y

# 安装python-pip
yum install python-pip -y

# 安装docker-compose
pip install -U docker-compose

# pull Portus, 修改 http://rubygems.org
cd ~/
git clone https://github.com/SUSE/Portus.git

# 修改挂着的volume  /opt/docker-registry
vi docker-compose.yml.template
./compose-setup.sh -e 10.25.111.168
