# Use an official Tomcat runtime as the base image
FROM tomcat:8.0.20-jre8

# Set author label
LABEL maintainer="Your Name <your.email@example.com>"

# Expose the default Tomcat port
EXPOSE 8080

# Create a directory to store the WAR file
RUN mkdir -p /usr/local/tomcat/webapps/maven-web-app

# Copy the WAR file from your local machine to the Tomcat webapps directory in the container
COPY /home/ubuntu/builds/qBN_bybWR/0/bhuvan121352/maven-web-app/target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app/maven-web-app.war

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
