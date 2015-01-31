FROM tmatsumoto/centos7-ja
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

ENTRYPOINT /sbin/init

RUN yum install -y samba
RUN yum swap -y fakesystemd systemd

RUN systemctl enable smb
RUN systemctl enable nmb

RUN rm -rf /var/lib/samba

RUN useradd -D -b/share/home
RUN mkdir /etc/skel/samba.d

COPY files/smb.conf /etc/samba/smb.conf
COPY files/etc/* /etc/

EXPOSE 137 138 139 445
