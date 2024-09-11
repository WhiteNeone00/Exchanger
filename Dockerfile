FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY yukitale-exchange.jar app.jar
COPY application.properties /app/application.properties  # Copy the properties file if it's external
ENTRYPOINT ["java", "-jar", "/app.jar", "--spring.config.location=classpath:/application.properties"]
