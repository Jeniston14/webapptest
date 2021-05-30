#Build WAR
#
FROM ubuntu:16.04
RUN apt-get -y update 
RUN apt-get -y install default-jdk
RUN apt-get -y install maven
RUN mkdir /tmp/boxfuse-sample-java-war-hello
COPY /tmp/boxfuse-sample-java-war-hello/LICENSE /tmp/boxfuse-sample-java-war-hello/
COPY /tmp/boxfuse-sample-java-war-hello/pom.xml /tmp/boxfuse-sample-java-war-hello/
COPY /tmp/boxfuse-sample-java-war-hello/README.md /tmp/boxfuse-sample-java-war-hello/
COPY /tmp/boxfuse-sample-java-war-hello/src /tmp/boxfuse-sample-java-war-hello/
RUN maven package /tmp/boxfuse-sample-java-war-hello
#Run webapp
#FROM tomcat:8.0
#COPY /tmp/boxfuse-sample-java-war-hello/target/*.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
