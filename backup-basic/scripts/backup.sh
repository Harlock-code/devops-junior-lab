#!/bin/bash

SOURCE_DIR="./data/"
BACKUP_DIR="./backup/"

echo "Starting backup..."

rsync -av --delete "$SOURCE_DIR" "$BACKUP_DIR"

echo "Backup completed successfully."
