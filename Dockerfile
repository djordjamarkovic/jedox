FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
       bash \
	   tree \
	   wget \
	   sudo \
	   vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME "/install"

USER root

EXPOSE 80
EXPOSE 7777
EXPOSE 7775
