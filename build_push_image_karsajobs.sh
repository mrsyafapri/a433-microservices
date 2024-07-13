#!/bin/bash
# Build the Docker image
docker build -t ghcr.io/mrsyafapri/karsajobs:latest .

# Authenticate with GitHub Container Registry
echo $GHCR_TOKEN | docker login ghcr.io -u mrsyafapri --password-stdin

# Push the Docker image
docker push ghcr.io/mrsyafapri/karsajobs:latest