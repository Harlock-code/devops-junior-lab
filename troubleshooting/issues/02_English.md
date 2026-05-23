# 02 - Ansible Become Password Error

## Problem

During playbook execution, the following error appeared:

```text
sudo: a password is required
```

## Cause

The playbook was using:

```yaml
become: true
```

but Ansible was not receiving the sudo password.

## Diagnosis

Review the playbook configuration and command execution.

## Solution

Run:

```bash
ansible-playbook playbook.yml --ask-become-pass
```

## Lessons Learned

When using:

```yaml
become: true
```

Ansible requires elevated privileges to execute administrative tasks.
