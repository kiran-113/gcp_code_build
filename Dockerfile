FROM openjdk:17 as build  
WORKDIR /app  
COPY . /app  
RUN mvn clean package  

FROM openjdk:17  
WORKDIR /app  
COPY --from=build /app/target/validation-service-0.0.1-SNAPSHOT.jar /app/validation-service.jar  
EXPOSE 80  
ENTRYPOINT ["java", "-jar", "validation-service.jar"]


# FROM openjdk:17
# EXPOSE 80
# ADD target/validation-service.jar validation-service.jar
# ENTRYPOINT ["java", "-jar", "validation-service.jar"]