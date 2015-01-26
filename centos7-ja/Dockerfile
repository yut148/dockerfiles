FROM centos:centos7
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

ENV LANG ja_JP.UTF-8

RUN yum update -y
RUN yum reinstall -y glibc-common
RUN yum install -y epel-release
RUN yum install -y vim git wget ruby 

RUN echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock
RUN cp /etc/localtime /etc/localtime.origin
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
