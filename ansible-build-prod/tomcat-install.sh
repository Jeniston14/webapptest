#!/bin/bash
mkdir /opt/tomcat && \
groupadd tomcat && \
useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz -P /tmp
tar -xzf /tmp/apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1 &&
cd /opt/tomcat/ && \
chgrp -R tomcat /opt/tomcat && chmod -R g+r conf && chmod g+x conf &&\
chown -R tomcat webapps/ work/ temp/ logs/
