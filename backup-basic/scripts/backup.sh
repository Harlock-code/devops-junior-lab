#!/bin/bash

# EN: Source directory to back up
# ES: Directorio origen para realizar backup
SOURCE_DIR="./data/"

# EN: Backup destination directory
# ES: Directorio destino del backup
BACKUP_DIR="./backup/"

# EN: Start backup process message
# ES: Mensaje de inicio del proceso de backup
echo "Starting backup..."

# EN: Synchronize source and backup directories
# ES: Sincronizar directorios origen y backup
#
# -a  -> archive mode (preserve permissions, timestamps, etc.)
# -v  -> verbose output
# --delete -> remove files in backup that no longer exist in source
#
# -a  -> modo archivo (preserva permisos, fechas, etc.)
# -v  -> salida detallada
# --delete -> elimina archivos del backup que ya no existen en origen
rsync -av --delete "$SOURCE_DIR" "$BACKUP_DIR"

# EN: Backup completed message
# ES: Mensaje de backup completado
echo "Backup completed successfully."
