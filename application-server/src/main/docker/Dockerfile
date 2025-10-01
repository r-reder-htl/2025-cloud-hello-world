FROM eclipse-temurin:21-jre

WORKDIR /opt/application
COPY ./target/hello*.jar backend.jar
CMD [ "java", "-jar", "backend.jar" ]

