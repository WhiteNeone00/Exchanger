FROM openjdk:17-jdk-alpine
WORKDIR /app
VOLUME /tmp
COPY yukitale-exchange.jar app.jar
COPY application.properties /app/application.properties
RUN ls -al /app  # This will list files in the /app directory
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--spring.config.location=/app/application.properties"]
