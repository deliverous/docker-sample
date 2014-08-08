FROM centos:centos6
MAINTAINER Thomas Clavier <tclavier@azae.net>
RUN yum upgrade -y && yum clean all
RUN yum -y install java-1.7.0-openjdk && yum clean all
RUN yum -y install tar && yum clean all

ADD http://mir1.ovh.net/ftp.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz /tmp/
RUN mkdir /opt/tomcat
RUN tar -xzvf /tmp/apache-tomcat-7.0.55.tar.gz --directory /opt/tomcat/ --strip 1 && rm /tmp/apache-tomcat-7.0.55.tar.gz

ADD http://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /opt/tomcat/webapps/

RUN rm -rf /opt/tomcat/logs ;\
    mkdir /var/log/tomcat/ ;\
    ln -s /var/log/tomcat/ /opt/tomcat/logs

EXPOSE 8080
VOLUME ["/var/log/tomcat"]
CMD chown root:root /var/log/tomcat; /opt/tomcat/bin/catalina.sh run

