FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y \
	vim \
	net-tools \
	curl
EXPOSE 80

           
            
WORKDIR /usr/apps/hello-docker/


COPY index.html /usr/share/nginx/html/
ADD . /usr/apps/hello-docker/


ADD index.html /usr/apps/hello-docker/index.html


