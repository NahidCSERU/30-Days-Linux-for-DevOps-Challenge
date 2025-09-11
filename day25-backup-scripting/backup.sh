#!/bin/bash
# Author: <Nahid Hasan>
# Date: 11.09.2025
# Usage: ./backup.sh <source_dir> <backup_dir>
SOURCE_DIR=$1
BACKUP_DIR=$2
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup-$TIMESTAMP.tar.gz"

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
  echo "Usage: $0 <source_dir> <backup_dir>"
  exit 1
fi

mkdir -p "$BACKUP_DIR"

echo "🔹 Creating backup of $SOURCE_DIR ..."
tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "✅ Backup created: $BACKUP_FILE"