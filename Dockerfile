#Build WAR
#
FROM ubuntu:16.04
RUN apt-get -y update 
RUN apt-get -y install default-jdk
RUN apt-get -y install maven
RUN apt-get -y install git
RUN mkdir /tmp/boxfuse-sample-java-war-hello
RUN cd /tmp/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN maven package /tmp/boxfuse-sample-java-war-hello/
#Run webapp
#FROM tomcat:8.0
#COPY /tmp/boxfuse-sample-java-war-hello/target/*.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
