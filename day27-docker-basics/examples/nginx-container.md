# Running Nginx in Docker

Run Nginx in detached mode:
```
docker run -d -p 8080:80 nginx
```
Now open in your browser:   

`http://localhost:8080`

To stop:
```
docker ps
docker stop <container_id>
```