# 01 - Docker Compose Error

## Problema

Al ejecutar:

```bash
docker compose up -d
```

apareció:

```text
unknown shorthand flag: 'd' in -d
```

## Causa

El sistema estaba utilizando una versión antigua del cliente Docker que no soportaba:

```bash
docker compose
```

sino:

```bash
docker-compose
```

## Diagnóstico

Verificar versión:

```bash
docker version
docker-compose version
```

## Solución

Usar:

```bash
docker-compose up -d
```

o instalar Docker Compose Plugin moderno.

## Aprendizaje

Existen diferencias entre:

- Docker Compose clásico
- Docker Compose Plugin moderno

y algunos entornos Linux todavía utilizan versiones antiguas.
