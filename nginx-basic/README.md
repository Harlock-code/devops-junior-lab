# Nginx Basic - Reverse Proxy

Mini proyecto DevOps Junior para aprender conceptos básicos de reverse proxy usando Nginx y Docker Compose.

---

# Objetivo

Desplegar un backend web detrás de un reverse proxy Nginx.

El proyecto demuestra:
- reverse proxy
- proxy_pass
- networking Docker
- comunicación entre contenedores
- validación HTTP

---

# Tecnologías

- Docker
- Docker Compose
- Nginx
- Linux

---

# Arquitectura

```text
Usuario
   |
   v
Reverse Proxy (Nginx)
   |
   v
Backend Container
```

---

# Estructura

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

# Configuración Reverse Proxy

```nginx
proxy_pass http://backend:80;
```

Nginx reenvía tráfico HTTP al contenedor backend.

---

# Despliegue

```bash
docker-compose up -d
```

---

# Verificación

```bash
docker ps
curl localhost:8081
```

---

# Resultado esperado

```html
<h1>Backend App</h1>
<p>This page is served through an Nginx reverse proxy.</p>
```

---

# Utilidad real

Los reverse proxy se utilizan en entornos DevOps modernos para:

- balanceo
- routing
- SSL
- gateways
- publicación de servicios
- microservicios

---

# Resultado

Reverse proxy funcionando correctamente mediante Nginx y Docker Compose.

---

# Estado

Proyecto completado correctamente.

---

# Screenshoot

![Grafana Dashboard](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_33_30-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)
