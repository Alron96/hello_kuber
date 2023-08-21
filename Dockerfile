#FROM gradle:8.2.1-jdk17 AS build
#COPY --chown=gradle:gradle .. /home/gradle/src
#WORKDIR /home/gradle/src
#RUN gradle bootJar
#
#FROM eclipse-temurin:17-jdk-alpine
#EXPOSE 8080
#RUN mkdir /app
#COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar
#ENTRYPOINT ["java","-jar","/app/spring-boot-application.jar"]

FROM maven:3.8.4-openjdk-17 as builder
WORKDIR /opt/image_name
COPY user-service/pom.xml ./
COPY ./user-service/src ./src
RUN mvn clean install

FROM maven:3.8.4-openjdk-17
WORKDIR /opt/image_name
COPY --from=builder /opt/image_name/target/*.jar /opt/image_name/*.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/image_name/*.jar"]