# Terraform Basic

Mini DevOps Junior project focused on learning basic Infrastructure as Code concepts using Terraform.

---

# Objective

Understand the basic Terraform workflow by creating and destroying local resources.

The project demonstrates:
- providers
- resources
- variables
- outputs
- state
- Terraform lifecycle

---

# Technologies

- Terraform
- Linux
- Infrastructure as Code (IaC)

---

# Structure

```text
terraform-basic/
├── main.tf
├── variables.tf
├── outputs.tf
├── screenshots/
└── README.md
```

---

# Main Files

## main.tf

Defines the main resource:

```hcl
resource "local_file" "server_info"
```

Terraform automatically generates a local file using variables.

---

## variables.tf

Defines reusable variables:

- server name
- environment
- IP address

---

## outputs.tf

Displays useful information after running apply.

---

# Terraform Workflow

## Initialize

```bash
terraform init
```

Downloads providers and prepares the environment.

---

## View plan

```bash
terraform plan
```

Terraform calculates changes without applying them.

---

## Apply changes

```bash
terraform apply
```

Creates real resources.

---

## Destroy resources

```bash
terraform destroy
```

Automatically removes the created infrastructure.

---

# Terraform State

Terraform generates:

```text
terraform.tfstate
```

This file stores:
- real state
- created resources
- metadata
- infrastructure synchronization

---

# Real-World Use Case

Terraform is used in DevOps environments to automate:

- virtual machines
- networks
- cloud
- Kubernetes
- storage
- DNS
- complete infrastructure

---

# Result

Terraform working correctly with:
- variables
- outputs
- state
- apply/destroy

---

# Status

Project completed successfully.
