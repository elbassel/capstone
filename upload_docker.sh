#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=basselista/capstone

# Step 2:
# Authenticate & tag
# echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="basselista"
docker tag project4 $dockerpath
docker login

# Step 3:
# Push image to a docker repository
docker push $dockerpath
