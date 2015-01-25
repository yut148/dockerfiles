FROM tmatsumoto/centos7-ja
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN yum install -y samba
RUN yum swap -y fakesystemd systemd

RUN systemctl enable smb
RUN systemctl enable nmb

EXPOSE 137 138 139 445
