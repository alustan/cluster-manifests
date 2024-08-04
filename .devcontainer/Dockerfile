# Use a base image that supports k3d
FROM rancher/k3d:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    passwd

# some images require specific values
ARG USERNAME=vscode

# Create the user if it doesn't exist
RUN id -u $USERNAME &>/dev/null || useradd -m $USERNAME

# log the docker build start event
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build start" >> /home/$USERNAME/status

RUN chown -R $USERNAME:$USERNAME /home/$USERNAME

# log the docker build complete
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build complete" >> /home/$USERNAME/status

