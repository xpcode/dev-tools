FROM daocloud.io/centos:7

MAINTAINER "C." <4019980@qq.com>

ENV NODE_VERSION 6.2.1

RUN yum -y update; \
	yum -y install git gcc make gcc-c++ openssl-devel wget; \
	yum clean all; \
	( cd ~/; \
	    wget "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz"; \
		tar -zvxf node-v$NODE_VERSION.tar.gz; \
		cd ./node-v$NODE_VERSION/; \
		./configure; \
		make && make install; \
		cd ~/; \
		rm -rf node-v$NODE_VERSION/; \
		rm -f node-v$NODE_VERSION.tar.gz; )

CMD [ "/bin/bash" ]