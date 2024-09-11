FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY yukitale-exchange.jar app.jar
COPY application.properties /app/application.properties
ENTRYPOINT ["java", "-jar", "/app.jar", "--spring.config.location=/app/application.properties"]
