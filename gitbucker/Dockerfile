FROM tmatsumoto/centos7-ja
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN yum install -y tomcat

WORKDIR /var/lib/tomcat/webapps
RUN wget https://github.com/takezoe/gitbucket/releases/download/2.7/gitbucket.war

ENV NAME tomcat

EXPOSE 8080

ENTRYPOINT tomcat start && tail -f /dev/null
