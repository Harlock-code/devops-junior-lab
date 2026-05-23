# Security Basic

Mini proyecto DevOps Junior para aplicar hardening básico en Linux usando Ansible.

## Objetivo

Automatizar una configuración básica de seguridad en Linux mediante Ansible.

El proyecto aplica:

- Instalación de UFW
- Instalación de Fail2ban
- Reglas básicas de firewall
- Política deny incoming
- Servicios de seguridad activos

## Tecnologías

- Ansible
- Linux
- UFW
- Fail2ban

## Estructura

```text
security-basic/
├── playbooks/
│   └── security-basic.yml
├── screenshots/
└── README.md
```

## Ejecución

```bash
ansible-playbook playbooks/security-basic.yml --ask-become-pass
```

## Validación

```bash
sudo ufw status verbose
systemctl status fail2ban --no-pager
```

## Resultado

UFW activo con política por defecto:

```text
Default: deny (incoming), allow (outgoing), deny (routed)
```

Puertos permitidos:

```text
22/tcp
80/tcp
443/tcp
```

Fail2ban activo:

```text
Active: active (running)
```
## Screenshoot

![Grafana Dashboard](https://github.com/Harlock-code/devops-junior-lab/blob/main/monitoring-basic/screenshots/2026-05-23%2012_33_30-Debian12%20(Instant%C3%A1nea%203)%20%5BCorriendo%5D%20-%20Oracle%20VirtualBox.png?raw=true)

---

## Troubleshooting real

Durante la ejecución apareció este warning:

```text
No inventory was parsed, only implicit localhost is available
```

Esto ocurre porque el playbook está diseñado para ejecutarse localmente contra `localhost`.

## Utilidad real

Este tipo de automatización se usa para aplicar configuraciones básicas de seguridad en servidores Linux de forma repetible y controlada.

## Estado

Proyecto completado correctamente.
