# Use the official Maven image as the base image
FROM maven:3.8.4-openjdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the source code of your Maven project to the container's working directory
COPY . .

# Build the Maven project and run the Spring Boot application
RUN mvn clean install
CMD ["mvn", "spring-boot:run"]
