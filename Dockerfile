FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y \
	vim \
	net-tools \
	curl
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
           
            
WORKDIR /usr/apps/hello-docker/



ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html


