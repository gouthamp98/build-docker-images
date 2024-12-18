# Use the official Ubuntu image as the base image

FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation

ENV DEBIAN_FRONTEND=noninteractive

# Update the package repository and install Apache

RUN apt-get update && \

    apt-get install -y apache2 && \

    apt-get clean

# Expose port 80 for HTTP

EXPOSE 80

# Start the Apache server

CMD ["apachectl", "-D", "FOREGROUND"]
