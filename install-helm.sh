#!/bin/bash

# Load environment variables from .env file if needed
if [ -f .env ]; then
  export $(cat .env | xargs)
fi

# Substitute environment variables in the template file
envsubst < values-template.yaml > values.yaml

# Apply the Helm chart with the substituted values file
helm upgrade --install controller alustan-helm --timeout 20m0s --debug --atomic --values values.yaml

