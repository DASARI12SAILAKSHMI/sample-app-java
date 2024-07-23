# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host machine to the working directory in the container
COPY app.jar /app/app.jar

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the port your application runs on
# Change this to the port your application uses
EXPOSE 8080
