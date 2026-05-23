# 02 - Ansible Become Password Error

## Problema

Durante la ejecución del playbook apareció:

```text
sudo: a password is required
```

## Causa

El playbook utilizaba:

```yaml
become: true
```

pero Ansible no estaba recibiendo contraseña sudo.

## Diagnóstico

Revisar configuración del playbook y ejecución del comando.

## Solución

Ejecutar:

```bash
ansible-playbook playbook.yml --ask-become-pass
```

## Aprendizaje

Cuando se utiliza:

```yaml
become: true
```

Ansible necesita privilegios elevados para ejecutar tareas administrativas.
