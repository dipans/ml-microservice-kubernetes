#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=housingprediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerpath --image=dipandocker/housingprediction:latest --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/$dockerpath --type=LoadBalancer --port 80 --name=$dockerpath
kubectl get services
