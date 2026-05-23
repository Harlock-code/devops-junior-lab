# 03 - Loki No Logs Found

## Problema

Grafana mostraba:

```text
No logs found
```

aunque Loki y Promtail estaban activos.

## Causa

Promtail estaba usando una ruta incorrecta:

```yaml
__path__: /var/log/docker-containers/*.log
```

Docker almacena logs en subdirectorios por contenedor.

## Diagnóstico

Revisar logs:

```bash
docker logs logging-promtail
```

y verificar rutas Docker:

```bash
/var/lib/docker/containers/
```

## Solución

Corregir la ruta:

```yaml
__path__: /var/log/docker-containers/*/*.log
```

y reiniciar el stack.

## Aprendizaje

Los problemas de logging suelen estar relacionados con:

- rutas
- permisos
- mounts
- labels
- redes Docker
