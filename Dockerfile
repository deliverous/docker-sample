FROM centos
MAINTAINER Thomas Clavier <tclavier@azae.net>
RUN yum upgrade -y && yum clean all
RUN yum -y install java-1.7.0-openjdk && yum clean all
RUN yum -y install tar && yum clean all

ADD http://mir1.ovh.net/ftp.apache.org/dist/tomcat/tomcat-7/v7.0.54/bin/apache-tomcat-7.0.54.tar.gz /tmp/
RUN mkdir /opt/tomcat
RUN tar -xzvf /tmp/apache-tomcat-7.0.54.tar.gz --directory /opt/tomcat/ --strip 1 && rm /tmp/apache-tomcat-7.0.54.tar.gz

ADD http://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
