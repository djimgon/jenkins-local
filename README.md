# 🧩 Jenkins Local

**Local Jenkins Repository for Development Projects**

This repository provides a **fully isolated local Jenkins environment** for building, testing, and deploying personal or client projects.  
It is designed for developers who prefer running Jenkins locally, without relying on remote servers.

---

## 🛠 Features
- Simple Docker Compose setup (`jenkins/jenkins:lts`)
- Persistent data storage via bind-mount (`/srv/jenkins`)
- Direct Docker integration using `/var/run/docker.sock`
- Optimized for local CI/CD pipelines and Laravel / PHP projects

---

## 💻 Usage

Start Jenkins locally:
```bash
docker compose up -d

## 💻 Access Jenkins in your browser:
---
👉 http://localhost:8089
