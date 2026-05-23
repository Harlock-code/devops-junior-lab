#!/bin/bash

BACKUP_DIR="./backup/"
RESTORE_DIR="./restore/"

echo "Starting restore..."

rsync -av "$BACKUP_DIR" "$RESTORE_DIR"

echo "Restore completed successfully."
