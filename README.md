docker-tomcat7-centos
=====================

sample docker container with tomcat downloaded from apache mirror 

Run it in local with

    docker build -t tomcat7 .
    docker run -p 8080:8080 tomcat7

And point your browser to http://localhost:8080/sample/
