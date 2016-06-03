#!/usr/bin/env bash

# create image
docker commit -a "C. <4019980@qq.com>" -m "install git nvm nodejs" 2d2888365612 yonyou/fe:1.0

# docker save -o ~/yonyou-fe-v1.0.tar yonyou-fe:1.0