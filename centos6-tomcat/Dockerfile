FROM centos:centos6
MAINTAINER Thomas Clavier <tclavier@azae.net>
RUN yum -y upgrade
RUN yum -y install java-1.7.0-openjdk
RUN yum -y install tomcat6 

ADD http://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /var/lib/tomcat6/webapps/

RUN rm -rf /var/log/tomcat6/ ;\
    rm -rf /usr/share/tomcat6/logs ;\
    mkdir /var/log/tomcat/ ;\
    ln -s /var/log/tomcat/ /usr/share/tomcat6/logs 

EXPOSE 8080
VOLUME ["/var/log/tomcat"]
CMD chown tomcat:tomcat /var/log/tomcat; service tomcat6 start && tail -f /var/log/tomcat/catalina.out
