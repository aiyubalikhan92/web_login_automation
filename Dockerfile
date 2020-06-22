FROM ubuntu:latest
           
            
WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install apache2

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;



ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
