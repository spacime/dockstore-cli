FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	libpq-dev \
	python-pip \
	python-psycopg2 \
	wget \
	&& rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash yifei

RUN whoami

RUN mkdir /home/yifei/.dockstore
RUN mkdir /home/yifei/.dockstore/self-install
RUN chmod 777 /home/yifei/.dockstore
COPY dockstore /
COPY config /
RUN mv /dockstore /home/yifei/.dockstore/
RUN mv /config /home/yifei/.dockstore/
RUN chmod -R 777 /home/yifei/.dockstore/
RUN chmod 777 /home/yifei/.dockstore/dockstore
RUN export PATH=$PATH:/home/yifei/.dockstore/

USER yifei
RUN bash ~/.dockstore/dockstore
CMD dockstore --version
