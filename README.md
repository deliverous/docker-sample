docker-centos-tomcatX
=====================

sample docker container with tomcat downloaded from apache mirror 

In Dockerfile you can point to last archive of tomcat 7 or tomcat 8

Run it in local with

    docker build -t tomcat7 .
    docker run -p 8080:8080 tomcat7

And point your browser to http://localhost:8080/sample/
