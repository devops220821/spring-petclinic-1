# Alpine Linux with OpenJDK JRE
#FROM openjdk:8-jre-alpine
FROM menard99/alpine-openjdk:8-jre-alpine
#FROM openjdk:1.8

EXPOSE 8080

# copy jar into image
COPY target/*.war /usr/bin/spring-petclinic.war

# run application with this command line 
ENTRYPOINT ["java","-jar","/usr/bin/spring-petclinic.war","--server.port=8080"]
