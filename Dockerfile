# Use an official OpenJDK runtime as a parent image with Java 21
FROM maven:latest

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target directory
COPY ../target/finalDemoApp.jar /app/appdemo.jar

# Specify the command to run the JAR file
CMD ["java", "-jar", "/app/appdemo.jar"]


