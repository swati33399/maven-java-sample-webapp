# Pull base image 
From tomcat:8-jre8 
#FROM tomcat:8.0

# Maintainer 
MAINTAINER "Ravi Arora" 
WORKDIR /home/vsts/work/1/a
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
