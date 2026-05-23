# Monitoring Basic

Mini proyecto DevOps Junior para desplegar un stack básico de monitorización usando Prometheus, Grafana y Node Exporter.

---

# Objetivo

Aprender conceptos básicos de observabilidad y métricas del sistema mediante herramientas utilizadas en entornos DevOps reales.

El stack monitoriza:
- CPU
- RAM
- métricas Linux
- actividad del sistema

---

# Tecnologías

- Docker
- Docker Compose
- Prometheus
- Grafana
- Node Exporter
- Linux

---

# Arquitectura

```text
Node Exporter
     |
     v
Prometheus
     |
     v
Grafana Dashboard
```

---

# Estructura

```text
monitoring-basic/
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
├── grafana/
├── screenshots/
└── README.md
```

---

# Servicios desplegados

| Servicio | Puerto | Función |
|---|---|---|
| Prometheus | 9090 | Recolección de métricas |
| Node Exporter | 9100 | Métricas Linux |
| Grafana | 3001 | Dashboards y visualización |

---

# Despliegue

```bash
docker-compose up -d
```

---

# Verificación

## Comprobar contenedores

```bash
docker ps
```

## Verificar Prometheus

```text
http://IP_DEL_SERVIDOR:9090
```

Targets esperados:

```text
prometheus → UP
node-exporter → UP
```

---

# Grafana

Acceso:

```text
http://IP_DEL_SERVIDOR:3001
```

Credenciales iniciales:

```text
admin / admin
```

---

# Configuración de datasource

Tipo:

```text
Prometheus
```

URL:

```text
http://prometheus:9090
```

---

# Métricas utilizadas

Ejemplo de query:

```text
node_cpu_seconds_total
```

Esta métrica permite visualizar:
- uso CPU
- idle
- system
- user
- iowait

---

# Utilidad real

Este stack representa una base de observabilidad utilizada en entornos DevOps modernos para:

- monitorización
- troubleshooting
- análisis de rendimiento
- alertas
- dashboards

---

# Resultado

Stack básico de monitorización funcionando correctamente con métricas reales del sistema.

---

# Screenshots

## Grafana Dashboard

![Grafana Dashboard](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_33_30-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)

## Prometheus Targets

![Prometheus Targets](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_39_12-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)

# Estado

Proyecto completado correctamente.
