# Use an Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    bash

# Create the vscode user if it doesn't exist
RUN useradd -m -s /bin/bash vscode

# Ensure home directory exists
RUN mkdir -p /home/vscode

# Set ownership of the home directory
RUN chown -R vscode:vscode /home/vscode

# Log the docker build start event
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build start" >> /home/vscode/status

# Install k3d
RUN curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# Set the user for subsequent operations
USER vscode

# Set entrypoint to k3d to match the original image behavior
ENTRYPOINT ["k3d"]
