FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY target/yukitale-exchange.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
