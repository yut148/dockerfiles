FROM tmatsumoto/centos7-ja
MAINTAINER MATSUMOTO Takashi <t.matsumoto0308@gmail.com>

RUN yum install -y tomcat

WORKDIR /usr/share/tomcat/webapps
RUN wget https://github.com/takezoe/gitbucket/releases/download/3.6/gitbucket.war

ENV NAME tomcat
ENV CATALINA_BASE /usr/share/tomcat

EXPOSE 8080 29418

ENTRYPOINT tomcat start && tail -f /dev/null
