#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=duongnhdocker

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy capstone-project --image="$dockerpath/capstone-project"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/capstone-project 3000:3000
