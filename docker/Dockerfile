FROM maven:latest
RUN apt update
RUN apt install git -y
WORKDIR /app
RUN git clone https://github.com/daticahealth/java-tomcat-maven-example.git
RUN cd /app/java-tomcat-maven-example && mvn package
