FROM openjdk:17

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

#pull base image


EXPOSE 8080

#default command
CMD java -jar /data/spring-boot-docker.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/spring-boot-docker.jar /data/spring-boot-docker.jar
