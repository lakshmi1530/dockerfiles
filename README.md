# 🐳 Docker Complete Cheat Sheet (Install + Commands + Disk Management)

A quick reference guide covering Docker installation, Dockerfile instructions, commands, and disk cleanup.

---

# ⚙️ Docker Installation

## 🐧 Install Docker on Linux (Amazon Linux / RHEL / CentOS)

```bash
sudo yum update -y
sudo yum install -y docker
```

➡️ Installs Docker engine

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

➡️ Starts and enables Docker service

```bash
sudo usermod -aG docker $USER
```

➡️ Allows running Docker without sudo (re-login required)

```bash
docker --version
```

# 📦 Dockerfile Instructions

### `FROM`

```dockerfile
FROM nginx:1.29.8
```

➡️ Base image

---

### `RUN`

```dockerfile
RUN apt-get update && apt-get install -y curl
```

➡️ Executes commands during build

---

### `COPY`

```dockerfile
COPY todo/ /usr/share/nginx/html/
```

➡️ Copies files into container

---

### `ADD`

```dockerfile
ADD app.tar.gz /app/
```

➡️ COPY + extract/archive support

---

### `WORKDIR`

```dockerfile
WORKDIR /app
```

➡️ Sets working directory

---

### `EXPOSE`

```dockerfile
EXPOSE 80
```

➡️ Documents container port

---

### `CMD`

```dockerfile
CMD ["nginx", "-g", "daemon off;"]
```

➡️ Default runtime command

---

### `ENTRYPOINT`

```dockerfile
ENTRYPOINT ["python3", "app.py"]
```

➡️ Main executable

---

### `ENV`

```dockerfile
ENV APP_ENV=prod
```

➡️ Environment variable

---

### `ARG`

```dockerfile
ARG VERSION=1.0
```

➡️ Build-time variable

---

### `LABEL`

```dockerfile
LABEL maintainer="you@example.com"
```

➡️ Metadata

---

### `USER`

```dockerfile
USER nginx
```

➡️ Run as specific user

---

### `VOLUME`

```dockerfile
VOLUME /data
```

➡️ Persistent storage mount

---

# 🚀 Docker Commands

### Build Image

```bash
docker build -t my-app .
```

➡️ Build image

---

### Run Container

```bash
docker run -d -p 8080:80 my-app
```

➡️ Run container

---

### List Containers

```bash
docker ps
```

➡️ Running containers

---

### List All

```bash
docker ps -a
```

➡️ All containers

---

### Logs

```bash
docker logs <id>
```

➡️ View logs

---

### Exec

```bash
docker exec -it <id> /bin/bash
```

➡️ Enter container

---

### Stop

```bash
docker stop <id>
```

➡️ Stop container

---

### Remove Container

```bash
docker rm <id>
```

➡️ Delete container

---

### Remove Image

```bash
docker rmi <id>
```

➡️ Delete image

---

### Pull Image

```bash
docker pull nginx
```

➡️ Download image

---

### Push Image

```bash
docker push <user>/app
```

➡️ Upload image

---

# 💾 Docker Disk Management (VERY IMPORTANT 🔥)

### Check Docker Disk Usage

```bash
docker system df
```

➡️ Shows space used by images, containers, volumes

---

### Remove Stopped Containers

```bash
docker container prune
```

➡️ Cleans unused containers

---

### Remove Unused Images

```bash
docker image prune
```

➡️ Removes dangling images

---

### Remove All Unused Data

```bash
docker system prune -a
```

➡️ Cleans EVERYTHING (images, containers, networks)

---

### Remove Volumes

```bash
docker volume prune
```

➡️ Deletes unused volumes

---

### Remove Specific Volume

```bash
docker volume rm <volume_name>
```

➡️ Deletes volume

---

### Check Disk Space (Linux)

```bash
df -h
```

➡️ Shows system disk usage

---

### Find Large Docker Files

```bash
du -sh /var/lib/docker/*
```

➡️ Identify disk-heavy Docker data

---

# 📌 Example Dockerfile

```dockerfile
FROM nginx:1.29.8
COPY todo/ /usr/share/nginx/html/
EXPOSE 80
```

➡️ Simple static website hosting

---

# 🧠 Pro Tips

* Use `.dockerignore` to reduce build size
* Prefer `COPY` over `ADD`
* Use slim/alpine images
* Regularly run `docker system prune`
* Avoid running containers as root

---

# 👩‍💻 Author

Pratyusha

---
