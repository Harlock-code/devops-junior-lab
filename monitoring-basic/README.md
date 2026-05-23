# Monitoring Basic

Mini DevOps Junior project focused on deploying a basic monitoring stack using Prometheus, Grafana, and Node Exporter.

---

# Objective

Learn the basic concepts of observability and system metrics using tools commonly used in real DevOps environments.

The stack monitors:
- CPU
- RAM
- Linux metrics
- system activity

---

# Technologies

- Docker
- Docker Compose
- Prometheus
- Grafana
- Node Exporter
- Linux

---

# Architecture

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

# Structure

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

# Deployed Services

| Service | Port | Function |
|---|---|---|
| Prometheus | 9090 | Metrics collection |
| Node Exporter | 9100 | Linux metrics |
| Grafana | 3001 | Dashboards and visualization |

---

# Deployment

```bash
docker-compose up -d
```

---

# Verification

## Check containers

```bash
docker ps
```

## Verify Prometheus

```text
http://SERVER_IP:9090
```

Expected targets:

```text
prometheus → UP
node-exporter → UP
```

---

# Grafana

Access:

```text
http://SERVER_IP:3001
```

Default credentials:

```text
admin / admin
```

---

# Datasource Configuration

Type:

```text
Prometheus
```

URL:

```text
http://prometheus:9090
```

---

# Metrics Used

Example query:

```text
node_cpu_seconds_total
```

This metric allows visualization of:
- CPU usage
- idle
- system
- user
- iowait

---

# Real-World Use Case

This stack represents a basic observability platform commonly used in modern DevOps environments for:

- monitoring
- troubleshooting
- performance analysis
- alerting
- dashboards

---

# Result

Basic monitoring stack successfully working with real system metrics.

---

# Screenshots

## Grafana Dashboard

![Grafana Dashboard](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_33_30-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)

## Prometheus Targets

![Prometheus Targets](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_39_12-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)

---

# Status

Project completed successfully.
