# Terraform Basic

Mini proyecto DevOps Junior para aprender conceptos básicos de Infrastructure as Code usando Terraform.

---

# Objetivo

Comprender el workflow básico de Terraform mediante la creación y destrucción de recursos locales.

El proyecto demuestra:
- providers
- resources
- variables
- outputs
- state
- lifecycle Terraform

---

# Tecnologías

- Terraform
- Linux
- Infrastructure as Code (IaC)

---

# Estructura

```text
terraform-basic/
├── main.tf
├── variables.tf
├── outputs.tf
├── screenshots/
└── README.md
```

---

# Archivos principales

## main.tf

Define el recurso principal:

```hcl
resource "local_file" "server_info"
```

Terraform genera automáticamente un archivo local usando variables.

---

## variables.tf

Define variables reutilizables:

- nombre servidor
- entorno
- IP

---

## outputs.tf

Muestra información útil después del apply.

---

# Workflow Terraform

## Inicializar

```bash
terraform init
```

Descarga providers y prepara el entorno.

---

## Ver plan

```bash
terraform plan
```

Terraform calcula cambios sin aplicarlos.

---

## Aplicar cambios

```bash
terraform apply
```

Crea recursos reales.

---

## Destruir recursos

```bash
terraform destroy
```

Elimina automáticamente la infraestructura creada.

---

# Terraform State

Terraform genera:

```text
terraform.tfstate
```

Este archivo almacena:
- estado real
- recursos creados
- metadata
- sincronización infraestructura

---

# Utilidad real

Terraform se utiliza en entornos DevOps para automatizar:

- máquinas virtuales
- redes
- cloud
- Kubernetes
- almacenamiento
- DNS
- infraestructura completa

---

# Resultado

Terraform funcionando correctamente con:
- variables
- outputs
- state
- apply/destroy

---

# Estado

Proyecto completado correctamente.
