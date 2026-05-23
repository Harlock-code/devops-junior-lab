# EN: Server hostname variable
# ES: Variable del nombre del servidor
variable "server_name" {
  type    = string
  default = "srv-devops-junior"
}

# EN: Environment name variable
# ES: Variable del entorno
variable "environment" {
  type    = string
  default = "lab"
}

# EN: Server IP address variable
# ES: Variable de dirección IP del servidor
variable "server_ip" {
  type    = string
  default = "192.168.56.50"
}
