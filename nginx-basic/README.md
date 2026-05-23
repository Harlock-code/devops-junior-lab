# Nginx Basic - Reverse Proxy

Mini DevOps Junior project focused on learning the basics of reverse proxy using Nginx and Docker Compose.

---

# Objective

Deploy a web backend behind an Nginx reverse proxy.

The project demonstrates:
- reverse proxy
- proxy_pass
- Docker networking
- container communication
- HTTP validation

---

# Technologies

- Docker
- Docker Compose
- Nginx
- Linux

---

# Architecture

```text
User
   |
   v
Reverse Proxy (Nginx)
   |
   v
Backend Container
```

---

# Structure

```text
nginx-basic/
├── app/
│   └── index.html
├── nginx/
│   └── default.conf
├── screenshots/
├── docker-compose.yml
└── README.md
```

---

# Reverse Proxy Configuration

```nginx
proxy_pass http://backend:80;
```

Nginx forwards HTTP traffic to the backend container.

---

# Deployment

```bash
docker-compose up -d
```

---

# Verification

```bash
docker ps
curl localhost:8081
```

---

# Expected Result

```html
<h1>Backend App</h1>
<p>This page is served through an Nginx reverse proxy.</p>
```

---

# Real-World Use Case

Reverse proxies are commonly used in modern DevOps environments for:

- load balancing
- routing
- SSL
- gateways
- service publishing
- microservices

---

# Result

Reverse proxy successfully working using Nginx and Docker Compose.

---

# Status

Project completed successfully.

---

# Screenshot

![Nginx_Backend](https://github.com/Harlock-code/devops-junior-lab/blob/main/nginx-basic/screenshots/backend-nginx.png?raw=true)
