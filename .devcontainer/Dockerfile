# Base image with necessary tools
FROM mcr.microsoft.com/vscode/devcontainers/dotnet as base

# User configuration
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Configure environment
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=$PATH:/usr/local/go/bin:/home/${USERNAME}/go/bin:/home/${USERNAME}/bin:/home/${USERNAME}/.local/bin:/home/${USERNAME}/.dotnet/tools:/opt/fluent-bit/bin

# Copy setup scripts
COPY library-scripts/base-setup.sh /scripts/

# Run base setup
RUN /bin/bash /scripts/base-setup.sh

# Install k3d
RUN curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=v5.0.0 bash

# Change ownership of the home directory
RUN chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}

# Update and clean up
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get clean -y

# Switch to the user
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Install additional dependencies required for Codespaces
RUN apt-get install -y --no-install-recommends bash curl nano jq httpie

# Set the entrypoint
ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
CMD [ "sleep", "infinity" ]
