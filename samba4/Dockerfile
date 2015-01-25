FROM tmatsumoto/centos7-ja
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN yum install -y samba
RUN yum swap -y fakesystemd systemd

RUN systemctl enable smb
RUN systemctl enable nmb

RUN rm -rf /var/lib/samba
COPY files/init.sh /root/init.sh
RUN chmod 755 /root/init.sh

COPY files/smb.conf /etc/samba/smb.conf
COPY files/userlist /root/userlist

EXPOSE 137 138 139 445

ENTRYPOINT /sbin/init
