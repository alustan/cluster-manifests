# Use a base image that supports k3d
FROM rancher/k3d:latest

# some images require specific values
ARG USERNAME=vscode

# Create the user directory if it doesn't exist
RUN mkdir -p /home/$USERNAME

# log the docker build start event
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build start" >> /home/$USERNAME/status

RUN chown -R $USERNAME:$USERNAME /home/$USERNAME

# log the docker build complete
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build complete" >> /home/$USERNAME/status



