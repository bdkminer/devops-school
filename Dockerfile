FROM ubuntu:18.04
RUN apt update && apt install default-jdk -y && apt install tomcat9 -y && apt install maven -y && apt install git -y
EXPOSE 8080
WORKDIR  /home/bdkminer
RUN git clone https://github.com/daticahealth/java-tomcat-maven-example.git
RUN cd /home/bdkminer/java-tomcat-maven-example
RUN mvn package
RUN cd /home/bdkminer/java-tomcat-maven-example/target
RUN cp /home/bdkminer/java-tomcat-maven-example/target/java-tomcat-maven-example.war /var/lib/tomcat9/webapps
