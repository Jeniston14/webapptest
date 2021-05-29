#Build package
#
FROM ubuntu:16.0
RUN apt-get -y update 
RUN apt-get -y install defaul-jdk
RUN apt-get -y install maven
COPY ./webapptest/build/* /
RUN mvn package /