
FROM openjdk:17
EXPOSE 80
ARG JAR_FILE=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
COPY ${JAR_FILE} validation-service.jar
#ADD target/validation-service.jar validation-service.jar
ENTRYPOINT ["java", "-jar", "validation-service.jar"]


