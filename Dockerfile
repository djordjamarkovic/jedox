FROM ubuntu:16.04

MAINTAINER Djordja Markovic <djordja.markovic@it-novum.com>

RUN apt-get update \
    && apt-get install -y \
       bash \
	   tree \
	   wget \
	   sudo \
	   vim \
	   iputils-ping \
	   less \
	   vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# add folder share
VOLUME "/share"

# change to user root
USER root

# add rights
RUN chmod -R 777 /tmp

# download software
ADD http://www.jedox.com/downloads/software/7/sr1/jedox_7_0_sr1.tar /tmp/

# extract software
RUN tar -xvf /tmp/jedox_7_0_sr1.tar -C /tmp/

# change to working directory /tmp
WORKDIR /tmp

# install software
RUN ./install.sh --automatic

# cleanup
RUN rm -rfv /tmp/*
RUN rm -rfv /tmp/.lic_agr_7.0

# change to working directory
WORKDIR /

# expose ports
EXPOSE 80
EXPOSE 7777
EXPOSE 7775

# add entrypoint
# ENTRYPOINT /opt/jedox/ps/jedox-suite.sh start && /bin/bash
