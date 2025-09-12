# Day 27: Docker Basics (docker run, docker ps)

This project demonstrates **basic Docker commands** on Linux:


##  Commands Covered
- `docker pull` → Download an image
- `docker run` → Run a container
- `docker ps` → List running containers
- `docker ps -a` → List all containers
- `docker stop` → Stop a container
- `docker rm` → Remove a container
- `docker rmi` → Remove an image
- `docker build` → Build custom image
- `docker run --rm` → Run and auto-remove container


##  Examples

### 1. Run Hello World
```
docker run hello-world
```
### 2. Run Nginx
```
docker run -d -p 8080:80 nginx
```
Visit: `http://localhost:8080`

### 3. Build and Run Custom Image
```
docker build -t myapp ./examples/custom-dockerfile
docker run --rm myapp
```
Output:

🚀 Hello from custom Docker image running on Alpine Linux!

## Why This Project?

- Helps Linux beginners learn **Docker basics**

- Provides ready-to-run examples

- Good starting point for DevOps practice