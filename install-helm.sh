#!/bin/bash

# Load environment variables from .env file if needed
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Substitute environment variables in the template file
envsubst < values-template.yaml > values.yaml


# Create the namespace
kubectl create ns alustan

# Install the Helm chart with the version from the .env file
helm install alustan-controller oci://registry-1.docker.io/alustan/alustan-helm \
  --version "$HELM_VERSION" \
  --timeout 20m0s \
  --debug \
  --atomic \
  --values values.yaml 
