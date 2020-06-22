FROM ubuntu:latest
            driver: "awslogs"
            options:
               awslogs-region: "us-east-1"
               awslogs-group: "log-group"
               awslogs-stream: "log-stream"

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
