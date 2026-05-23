# Security Basic

Mini DevOps Junior project focused on applying basic Linux hardening using Ansible.

## Objective

Automate a basic Linux security configuration using Ansible.

The project applies:

- UFW installation
- Fail2ban installation
- Basic firewall rules
- Deny incoming policy
- Active security services

## Technologies

- Ansible
- Linux
- UFW
- Fail2ban

## Structure

```text
security-basic/
├── playbooks/
│   └── security-basic.yml
├── screenshots/
└── README.md
```

## Execution

```bash
ansible-playbook playbooks/security-basic.yml --ask-become-pass
```

## Validation

```bash
sudo ufw status verbose
systemctl status fail2ban --no-pager
```

## Result

UFW active with default policy:

```text
Default: deny (incoming), allow (outgoing), deny (routed)
```

Allowed ports:

```text
22/tcp
80/tcp
443/tcp
```

Fail2ban active:

```text
Active: active (running)
```

## Screenshot

![Security_bash](https://github.com/Harlock-code/devops-junior-lab/blob/main/security-basic/screenshots/security.png?raw=true)

---

## Real Troubleshooting

During execution, this warning appeared:

```text
No inventory was parsed, only implicit localhost is available
```

This happens because the playbook is designed to run locally against `localhost`.

## Real-World Use Case

This type of automation is used to apply basic security configurations on Linux servers in a repeatable and controlled way.

## Status

Project completed successfully.
