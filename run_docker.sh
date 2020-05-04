#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
TAG=capstone
docker build --tag=$TAG .

# Step 2:
# List docker images
docker image ls

# Step 3:
docker run -p 3000:3000 $TAG
