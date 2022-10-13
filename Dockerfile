FROM openjdk:11
ADD target/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar
ADD src/main/resources/application.properties application.properties
ENTRYPOINT ["java", "-jar", "hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar", "-Dspring.config.location=application.properties"]
