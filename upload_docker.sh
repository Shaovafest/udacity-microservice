#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`


# Create dockerpath
dockerpath=shaovafest/ml_app

# Step 2:  
# Authenticate & tag
docker login
docker tag ml_app $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath