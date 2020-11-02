# Pull base image 
From tomcat:8-jre8 
#FROM tomcat:8.0

# Maintainer 
MAINTAINER "Ravi Arora" 
#used in release pipeline ---------------------------------
#WORKDIR /home/vsts/work/r1/a 
#COPY _maven-tomcat-helloworld-CI/drop/webapp/target/webapp.war /usr/local/tomcat/webapps
#used in release pipeline ---------------------------------

#used in simple pipeline ---------------------------------
WORKDIR /home/vsts/work/1/a 
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
#used in simple pipeline ---------------------------------
