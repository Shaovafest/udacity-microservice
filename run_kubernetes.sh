#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=shaovafest/ml-app


# Run the Docker Hub container with kubernetes
kubectl run ml-app\
    --image=$dockerpath\
    --port=80 --labels app=ml-app


# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-app 8000:80
