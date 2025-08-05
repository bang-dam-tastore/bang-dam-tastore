# Stage 1: Build the app
FROM maven:3.9.4-eclipse-temurin-17 AS builder

WORKDIR /app

# Copy source files
COPY pom.xml .
COPY src ./src

# Build Spring Boot app
RUN mvn clean package -DskipTests

# Stage 2: Run the app
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy built jar from builder
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
