FROM centos:centos7
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y vim git wget ruby 

ENV LANG ja_JP.UTF-8

RUN echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock
RUN cp /etc/localtime /etc/localtime.origin
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

