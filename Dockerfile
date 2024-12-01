FROM maven:latest AS build
RUN apt update
RUN apt install git -y
WORKDIR /app
RUN git clone https://github.com/daticahealth/java-tomcat-maven-example.git
RUN cd /app/java-tomcat-maven-example && mvn package

FROM tomcat:latest
COPY --from=build /app/java-tomcat-maven-example/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps

