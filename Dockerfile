#Build package
#
FROM ubuntu:16.0
RUN apt-get -y update 
RUN apt-get -y install defaul-jdk
RUN apt-get -y install maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package /boxfuse-sample-java-war-hello