FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y \
	vim \
	net-tools \
	curl


MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update




RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html


