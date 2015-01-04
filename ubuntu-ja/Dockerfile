FROM ubuntu:14.04
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update -y
RUN apt-get install -y vim git wget ruby nodejs language-pack-ja

ENV LANG ja_JP.UTF-8
RUN cp /etc/localtime /etc/localtime.origin
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
