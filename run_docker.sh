#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build --tag=ml-app .

# Step 2: 
# List docker images
docker images ls

# Step 3: 
# Run flask app
docker run -p 8000:80 ml-app