#!/usr/bin/env bash
docker commit -a "C. <4019980@qq.com>" yonyou-fe yonyou-fe:1.0
docker save -o ~/yonyou-fe-v1.0.tar yonyou-fe:1.0