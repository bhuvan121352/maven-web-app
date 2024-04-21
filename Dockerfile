FROM tomcat:8.0.20-jre8
MAINTAINER bhuvan <mbm431997@gmail.com>
EXPOSE 8080
COPY  /builds/bhuvan121352/maven-web-app/target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war
