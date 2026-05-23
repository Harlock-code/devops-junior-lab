# Docker Basic Project

Mini proyecto DevOps Junior para desplegar una web estática usando Docker, Dockerfile y Docker Compose.

---

## Objetivo

Construir y ejecutar un contenedor Nginx personalizado que sirva una página HTML básica.

Este proyecto demuestra conocimientos básicos de:

- Docker
- Dockerfile
- Docker Compose
- Puertos
- Logs
- Validación de servicios
- Troubleshooting básico

---

## Arquitectura

```text
Usuario / Navegador
        |
        | HTTP :8080
        v
Servidor Docker
        |
        v
Contenedor Nginx
        |
        v
/usr/share/nginx/html/index.html
```

---

## Estructura del proyecto

```text
docker-basic/
├── app/
│   └── index.html
├── screenshots/
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## Archivos principales

### Dockerfile

```dockerfile
FROM nginx:latest

COPY app/index.html /usr/share/nginx/html/index.html
```

### docker-compose.yml

```yaml
services:
  nginx-basic:
    build: .
    container_name: nginx-basic
    ports:
      - "8080:80"
    restart: unless-stopped
```

---

## Despliegue

```bash
docker-compose up -d
```

---

## Verificación

Comprobar contenedor:

```bash
docker ps
```

Comprobar respuesta HTTP:

```bash
curl localhost:8080
```

Resultado esperado:

```html
<h1>Docker Basic Project</h1>
<p>Container running successfully.</p>
```

---

## Logs

```bash
docker logs nginx-basic
```

Ejemplo de acceso correcto:

```text
"GET / HTTP/1.1" 200
```

El código `200` indica que la web respondió correctamente.

---

## Troubleshooting real

Durante el despliegue apareció este error:

```text
unknown shorthand flag: 'd' in -d
```

La causa fue que el entorno no tenía disponible el plugin moderno:

```bash
docker compose
```

Se solucionó usando el comando clásico:

```bash
docker-compose up -d
```

---

## Limpieza

```bash
docker-compose down
```

---

## Resultado

Servicio web Nginx funcionando correctamente en el puerto `8080`.

```text
http://IP_DEL_SERVIDOR:8080
```

---

## Estado

Proyecto completado correctamente.
