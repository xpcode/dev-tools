#!/usr/bin/env bash
docker run --name cnpm-web_1 --link cnpm-mysql_1:mysql -it docker-registry.chaoke.ren:5000/fe/base:1.0
