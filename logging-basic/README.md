# Logging Basic

Mini proyecto DevOps Junior para centralizar logs usando Loki, Promtail y Grafana.

---

# Objetivo

Aprender conceptos básicos de logging centralizado y observabilidad moderna mediante herramientas utilizadas en entornos DevOps reales.

El stack permite:
- recolectar logs Docker
- centralizar logs
- consultar logs desde Grafana
- realizar troubleshooting

---

# Tecnologías

- Docker
- Docker Compose
- Loki
- Promtail
- Grafana
- Linux

---

# Arquitectura

```text
Docker Containers
        |
        v
Promtail
        |
        v
Loki
        |
        v
Grafana Explore
```

---

# Estructura

```text
logging-basic/
├── docker-compose.yml
├── loki/
│   └── loki-config.yml
├── promtail/
│   └── promtail-config.yml
├── screenshots/
└── README.md
```

---

# Servicios desplegados

| Servicio | Puerto | Función |
|---|---|---|
| Loki | 3100 | Almacenamiento de logs |
| Promtail | 9080 | Recolección de logs |
| Grafana | 3001 | Visualización |

---

# Despliegue

```bash
docker-compose up -d
```

---

# Verificación

## Ver contenedores

```bash
docker ps
```

## Ver logs Loki

```bash
docker logs logging-loki
```

## Ver logs Promtail

```bash
docker logs logging-promtail
```

## Comprobar Loki

```bash
curl localhost:3100/ready
```

Resultado esperado:

```text
ready
```

---

# Configuración Grafana

## Añadir datasource Loki

Tipo:

```text
Loki
```

URL:

```text
http://IP_DEL_SERVIDOR:3100
```

---

# Query utilizada

```text
{job="docker"}
```

Permite visualizar logs centralizados de contenedores Docker.

---

# Troubleshooting real

Durante el proyecto ocurrió un problema donde Grafana no mostraba logs.

## Problema

```text
No logs found
```

## Causa

Ruta incorrecta en Promtail:

```yaml
__path__: /var/log/docker-containers/*.log
```

## Solución

Corregir la ruta:

```yaml
__path__: /var/log/docker-containers/*/*.log
```

y reiniciar el stack.

---

# Utilidad real

Este tipo de stack se utiliza en entornos DevOps modernos para:

- troubleshooting
- centralización de logs
- debugging
- observabilidad
- análisis de errores

---

# Resultado

Sistema de logging centralizado funcionando correctamente mediante Loki y Promtail.

---

# Estado

Proyecto completado correctamente.
