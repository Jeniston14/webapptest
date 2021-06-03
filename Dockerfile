FROM maven:3.5.2-jdk-8-alpine AS COMPILEWAR
COPY /tmp/boxfuse-sample-java-war-hello/pom.xml /tmp/
COPY /tmp/boxfuse-sample-java-war-hello/src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM tomcat:9.0-jre8-alpine
COPY --from=COMPILEWAR /tmp/target/*.war $CATALINA_HOME/webapps/
EXPOSE 8081