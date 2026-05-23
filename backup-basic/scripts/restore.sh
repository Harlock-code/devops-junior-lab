#!/bin/bash

# EN: Backup source directory
# ES: Directorio origen del backup
BACKUP_DIR="./backup/"

# EN: Restore destination directory
# ES: Directorio destino de la restauración
RESTORE_DIR="./restore/"

# EN: Start restore process message
# ES: Mensaje de inicio del proceso de restauración
echo "Starting restore..."

# EN: Synchronize backup content into restore directory
# ES: Sincronizar contenido del backup hacia el directorio restore
rsync -av "$BACKUP_DIR" "$RESTORE_DIR"

# EN: Restore completed message
# ES: Mensaje de restauración completada
echo "Restore completed successfully."
