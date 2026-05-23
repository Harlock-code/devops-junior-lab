# GitHub Actions Basic

Mini DevOps Junior project focused on automating Docker validations using GitHub Actions.

---

# Objective

Learn the basic workflow of CI/CD pipelines using GitHub Actions.

The workflow automatically validates the following file:

```text
docker-basic/docker-compose.yml
```

every time a push is made to the repository.

---

# Technologies

- GitHub Actions
- Docker
- Docker Compose
- YAML
- Linux

---

# Structure

```text
.github/
└── workflows/
    └── docker-check.yml
```

---

# Workflow Functionality

When running:

```bash
git push
```

GitHub automatically:

1. Creates a temporary Ubuntu runner
2. Clones the repository
3. Executes automated commands
4. Validates the Docker Compose file
5. Generates workflow logs

---

# Workflow

```yaml
name: Docker Compose Validation

on:
  push:
    paths:
      - 'docker-basic/**'
      - '.github/workflows/docker-check.yml'

  workflow_dispatch:

jobs:
  validate-docker:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Show repository structure
        run: tree

      - name: Validate Docker Compose file
        run: |
          docker compose -f docker-basic/docker-compose.yml config

      - name: Validation completed
        run: echo "Docker Compose validation successful"
```

---

# Real-World Use Case

These types of pipelines are commonly used in real DevOps environments to:

- validate configurations
- detect errors automatically
- automate testing
- prevent broken deployments
- improve code quality

---

# Result

Basic CI pipeline successfully working with GitHub Actions.

---

# Status

Project completed successfully.

Proyecto completado correctamente.
