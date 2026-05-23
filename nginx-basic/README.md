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
