#!/bin/bash
# backup.sh - Compress a directory into a timestamped backup file

SOURCE_DIR="$1"
BACKUP_DIR="./backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
LOG_FILE="./logs/backup.log"

if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: ./backup.sh <directory_to_backup>"
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: $SOURCE_DIR not found!"
  exit 1
fi

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR" \
  && echo "[$(date)] Backup of $SOURCE_DIR completed." >> "$LOG_FILE" \
  || echo "[$(date)] Backup failed!" >> "$LOG_FILE"