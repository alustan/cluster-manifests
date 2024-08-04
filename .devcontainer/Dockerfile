# Use a base image that supports k3d
FROM rancher/k3d:latest

# log the docker build start event
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build start" >> /home/status

# log the docker build complete
RUN echo "$(date +'%Y-%m-%d %H:%M:%S')    docker build complete" >> /home/status
