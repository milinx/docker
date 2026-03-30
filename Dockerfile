# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built JAR from the target folder
COPY target/simple-java-app-1.0.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]



FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
