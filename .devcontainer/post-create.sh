#!/bin/bash

# this runs at Codespace creation - not part of pre-build

echo "post-create start"
echo "$(date +'%Y-%m-%d %H:%M:%S')    post-create start" >> "$HOME/status"

# Create k3d cluster with a specific Kubernetes version
k3d cluster create mycluster --image rancher/k3s:v1.23.0-k3s1 --api-port 6443 -p "30000-32767:30000-32767@server[0]" --agents 2

echo "post-create complete"
echo "$(date +'%Y-%m-%d %H:%M:%S')    post-create complete" >> "$HOME/status"
