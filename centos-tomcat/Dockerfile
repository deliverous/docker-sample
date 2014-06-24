FROM centos
MAINTAINER Thomas Clavier <tclavier@azae.net>
RUN yum -y upgrade
RUN yum -y install java-1.7.0-openjdk
RUN yum -y install tomcat6 

ADD http://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /var/lib/tomcat6/webapps/
EXPOSE 8080
CMD service tomcat6 start && tail -f /var/log/tomcat6/catalina.out
