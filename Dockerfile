#Build package
#
FROM ubuntu:16.04
RUN apt-get -y update 
RUN apt-get -y install default-jdk
RUN apt-get -y install maven
COPY ./webapptest/build/* /
RUN mvn package /