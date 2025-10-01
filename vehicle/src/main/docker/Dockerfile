FROM eclipse-temurin:25-jre

WORKDIR /opt/application
COPY ./target/*.jar ./backend.jar
CMD [ "java", "-jar", "backend.jar" ]