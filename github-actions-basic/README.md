# GitHub Actions Basic

Mini proyecto DevOps Junior para automatizar validaciones Docker usando GitHub Actions.

---

# Objetivo

Aprender el funcionamiento básico de pipelines CI/CD mediante GitHub Actions.

El workflow valida automáticamente el archivo:

```text
docker-basic/docker-compose.yml
```

cada vez que se realiza un push en el repositorio.

---

# Tecnologías

- GitHub Actions
- Docker
- Docker Compose
- YAML
- Linux

---

# Estructura

```text
.github/
└── workflows/
    └── docker-check.yml
```

---

# Funcionamiento del workflow

Cuando se realiza un:

```bash
git push
```

GitHub:

1. Crea un runner Ubuntu temporal
2. Clona el repositorio
3. Ejecuta comandos automáticos
4. Valida el Docker Compose
5. Genera logs del proceso

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

# Utilidad real

Este tipo de pipelines se utiliza en entornos DevOps reales para:

- validar configuraciones
- detectar errores automáticamente
- automatizar testing
- evitar despliegues rotos
- mejorar calidad del código

---

# Resultado

Pipeline CI básica funcionando correctamente mediante GitHub Actions.

---

# Estado

Proyecto completado correctamente.
