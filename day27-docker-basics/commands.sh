#!/bin/bash
# Author: <Nahid Hasan>
# Date: 12.09.2025

# 🔹 Pull an image
docker pull hello-world   # Download a test image from Docker Hub

# 🔹 Run a container
docker run hello-world    # Run the hello-world container

# 🔹 Run nginx in detached mode
docker run -d -p 8080:80 nginx   # Access http://localhost:8080

# 🔹 List running containers
docker ps     # Show active containers

# 🔹 List all containers (including stopped)
docker ps -a  # Show all containers

# 🔹 Stop a container
docker stop <container_id>   # Stop a running container

# 🔹 Remove a container
docker rm <container_id>     # Delete a container

# 🔹 Remove an image
docker rmi nginx             # Delete image from local

# 🔹 Build a custom image
docker build -t myapp ./examples/custom-dockerfile

# 🔹 Run the custom container
docker run --rm myapp
