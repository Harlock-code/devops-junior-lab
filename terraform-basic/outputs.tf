# EN: Show generated file name after apply
# ES: Mostrar nombre del archivo generado tras apply
output "generated_file" {
  value = local_file.server_info.filename
}
