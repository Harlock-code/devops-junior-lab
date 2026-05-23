# Ansible Basic - Nginx Deployment

Mini proyecto DevOps Junior para automatizar la instalación y configuración de Nginx usando Ansible.

## Objetivo

Automatizar el despliegue de un servidor web Nginx con una página HTML personalizada usando:

- Inventory
- Playbook
- Become / sudo
- Templates
- Handlers
- Facts de Ansible
- Validación HTTP

## Estructura

```text
ansible-basic/
├── inventory/
│   └── hosts.ini
├── playbooks/
│   └── install-nginx.yml
├── templates/
│   └── index.html.j2
├── screenshots/
└── README.md
```

## Ejecución

```bash
ansible-playbook -i inventory/hosts.ini playbooks/install-nginx.yml --ask-become-pass
```

## Validación

```bash
systemctl status nginx --no-pager
curl localhost
```

## Resultado

```html
<h1>Ansible Nginx Deployment</h1>
<p>Deployed automatically using Ansible.</p>
<p>Hostname: srv-ansible</p>
```

## Troubleshooting real

Durante la primera ejecución apareció:

```text
sudo: a password is required
```

Se solucionó ejecutando el playbook con:

```bash
--ask-become-pass
```

## Estado

Proyecto completado correctamente.
