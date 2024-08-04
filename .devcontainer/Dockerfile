# Use an Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    passwd \
    adduser \
    curl \
    bash

# some images require specific values
ARG USERNAME=vscode

# Create the user if it doesn't exist
RUN id -u $USERNAME &>/dev/null || adduser --disabled-password --gecos "" $USERNAME

# Ensure home directory exists
RUN mkdir -p /home/$USERNAME

# log the docker build start event
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build start" >> /home/$USERNAME/status

RUN chown -R $USERNAME:$USERNAME /home/$USERNAME

# log the docker build complete
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build complete" >> /home/$USERNAME/status

# Install k3d
RUN curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# Set entrypoint to k3d to match the original image behavior
ENTRYPOINT ["k3d"]
