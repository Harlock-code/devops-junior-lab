# 03 - Loki No Logs Found

## Problem

Grafana displayed:

```text
No logs found
```

even though Loki and Promtail were running.

## Cause

Promtail was using an incorrect path:

```yaml
__path__: /var/log/docker-containers/*.log
```

Docker stores logs inside subdirectories for each container.

## Diagnosis

Review logs:

```bash
docker logs logging-promtail
```

and verify Docker log paths:

```bash
/var/lib/docker/containers/
```

## Solution

Correct the path:

```yaml
__path__: /var/log/docker-containers/*/*.log
```

and restart the stack.

## Lessons Learned

Logging issues are commonly related to:

- paths
- permissions
- mounts
- labels
- Docker networks
