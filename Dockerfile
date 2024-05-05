# Use an OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/jenkins.jar /app/

# Expose the port your application listens on (if necessary)
EXPOSE 8082

# Command to run the application when the container starts
CMD ["java", "-jar", "jenkins.jar"]
