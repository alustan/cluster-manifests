#!/bin/bash

# Load environment variables from .env file if needed
if [ -f .env ]; then
  export $(cat .env | xargs)
fi

# Substitute environment variables in the template file
envsubst < values-template.yaml > values.yaml

kubectl create ns alustan


helm install alustan-controller oci://registry-1.docker.io/alustan/alustan-helm --version <version> --timeout 20m0s --debug --atomic --values values.yaml 
