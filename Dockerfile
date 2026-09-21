FROM maven:3.9-eclipse-temurin-17
LABEL project="java-two-tier-devops"
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/java-two-tier-app-1.0.0.jar"]