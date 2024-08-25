# Use an official OpenJDK runtime as a parent image with Java 21
# Use an official Maven image as a parent image
FROM maven:latest

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to the container
COPY pom.xml /app/

# Copy the entire project to the container
COPY . /app/

# Package your application
RUN mvn package

# Run the main class (assuming your application has a main class)
CMD ["java", "-jar", "./target/finalDemoApp.jar"]

