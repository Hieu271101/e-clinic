# Use an official Java runtime as the base image
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Java Spring Boot application to the container
COPY target/clinicManamentSystem.jar /app/clinicManamentSystem.jar

# Create a directory for extracted JARs
RUN mkdir -p /app/extracted-jars/BOOT-INF/lib

# Extract the nested JAR files
RUN cd /app/extracted-jars && jar xf /app/clinicManamentSystem.jar BOOT-INF/lib

# Expose the port used by your Spring Boot application
EXPOSE 8080

# Update the classpath to include the extracted JAR files
ENV CLASSPATH=/app/extracted-jars

# Run the Java Spring Boot application
CMD ["java", "-cp", "/app/clinicManamentSystem.jar:/app/extracted-jars", "org.springframework.boot.loader.JarLauncher"]