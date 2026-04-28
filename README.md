# 🐳 Docker Cheat Sheet (Table Format)

---

## ⚙️ Docker Installation

| Step              | Command                         | Description             |
| ----------------- | ------------------------------- | ----------------------- |
| Update system     | `sudo yum update -y`            | Updates packages        |
| Install Docker    | `sudo yum install -y docker`    | Installs Docker engine  |
| Start Docker      | `sudo systemctl start docker`   | Starts Docker service   |
| Enable Docker     | `sudo systemctl enable docker`  | Auto-start on boot      |
| Add user to group | `sudo usermod -aG docker $USER` | Run Docker without sudo |
| Verify            | `docker --version`              | Check installation      |


---

## 📦 Dockerfile Instructions

| Instruction | Example                            | Description           |
| ----------- | ---------------------------------- | --------------------- |
| FROM        | `FROM nginx:1.29.8`                | Base image            |
| RUN         | `RUN apt-get install -y curl`      | Execute build command |
| COPY        | `COPY app/ /app/`                  | Copy files            |
| ADD         | `ADD file.tar.gz /app/`            | Copy + extract        |
| WORKDIR     | `WORKDIR /app`                     | Set working directory |
| EXPOSE      | `EXPOSE 80`                        | Define port           |
| CMD         | `CMD ["nginx","-g","daemon off;"]` | Default command       |
| ENTRYPOINT  | `ENTRYPOINT ["python3","app.py"]`  | Main command          |
| ENV         | `ENV ENV=prod`                     | Set env variable      |
| ARG         | `ARG VERSION=1`                    | Build-time variable   |
| LABEL       | `LABEL owner=me`                   | Metadata              |
| USER        | `USER nginx`                       | Run as user           |
| VOLUME      | `VOLUME /data`                     | Persistent storage    |

---

## 🚀 Docker Commands

| Action           | Command                           | Description             |
| ---------------- | --------------------------------- | ----------------------- |
| Build image      | `docker build -t my-app .`        | Create image            |
| Run container    | `docker run -d -p 8080:80 my-app` | Start container         |
| List running     | `docker ps`                       | Show running containers |
| List all         | `docker ps -a`                    | Show all containers     |
| Logs             | `docker logs <id>`                | View logs               |
| Exec             | `docker exec -it <id> /bin/bash`  | Access container        |
| Stop             | `docker stop <id>`                | Stop container          |
| Remove container | `docker rm <id>`                  | Delete container        |
| Remove image     | `docker rmi <id>`                 | Delete image            |
| Pull image       | `docker pull nginx`               | Download image          |
| Push image       | `docker push user/app`            | Upload image            |

---

## 💾 Docker Disk Management

| Action                    | Command                    | Description             |
| ------------------------- | -------------------------- | ----------------------- |
| Check usage               | `docker system df`         | Disk usage summary      |
| Remove stopped containers | `docker container prune`   | Clean unused containers |
| Remove unused images      | `docker image prune`       | Delete dangling images  |
| Remove everything         | `docker system prune -a`   | Clean all unused data   |
| Remove volumes            | `docker volume prune`      | Delete unused volumes   |
| Remove specific volume    | `docker volume rm <name>`  | Delete volume           |
| Check disk (Linux)        | `df -h`                    | System disk usage       |
| Find large files          | `du -sh /var/lib/docker/*` | Identify heavy data     |

---

## 📌 Example Dockerfile

```dockerfile
FROM nginx:1.29.8
COPY todo/ /usr/share/nginx/html/
EXPOSE 80
```

---

## 🧠 Pro Tips

| Tip                 | Description       |
| ------------------- | ----------------- |
| Use `.dockerignore` | Reduce image size |
| Prefer COPY         | Safer than ADD    |
| Use slim images     | Smaller builds    |
| Prune regularly     | Avoid disk issues |
| Avoid root user     | Better security   |

---
