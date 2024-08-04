# this image is built and updated weekly
# https://github.com/cse-labs/codespaces-images

FROM ubuntu:22.04 

# Update package lists and install necessary build dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    curl \
    git \
    unzip \
    jq \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

