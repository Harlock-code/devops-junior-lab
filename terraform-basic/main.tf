terraform {

  # EN: Minimum required Terraform version
  # ES: Versión mínima requerida de Terraform
  required_version = ">= 1.0"
}

# EN: Create local file with server information
# ES: Crear archivo local con información del servidor
resource "local_file" "server_info" {

  filename = "server-info.txt"

  content = <<EOT
Server Name: ${var.server_name}
Environment: ${var.environment}
IP Address: ${var.server_ip}
EOT
}
