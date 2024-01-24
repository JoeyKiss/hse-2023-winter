# Stage 1: Build Stage
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /build

# Copy the Maven configuration file
COPY pom.xml .

# Download the Maven dependencies (only the dependencies)
RUN mvn dependency:go-offline

# Copy the application source code
COPY src src

# Build the application
RUN mvn clean install -DskipTests

# Stage 2: Runtime Stage
FROM eclipse-temurin:21 AS runtime
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /build/target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot application is listening on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
