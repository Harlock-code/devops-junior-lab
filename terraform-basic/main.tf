terraform {
  required_version = ">= 1.0"
}

resource "local_file" "server_info" {
  filename = "server-info.txt"

  content = <<EOT
Server Name: ${var.server_name}
Environment: ${var.environment}
IP Address: ${var.server_ip}
EOT
}
