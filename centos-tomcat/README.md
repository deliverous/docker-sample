# centos-tomcat

Sample centos 6 tomcat 6 container with tomcat get from centos rpm.

Run it in local with

docker build -t tomcat-sample .
docker run -p 8080:8080 tomcat-sample

And test with http://localhost:8080/sample/
