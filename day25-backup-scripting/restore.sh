#!/bin/bash
# Author: <Nahid Hasan>
# Date: 11.09.2025
# Usage: ./restore.sh <backup_file> <restore_dir>
BACKUP_FILE=$1
RESTORE_DIR=$2

if [ -z "$BACKUP_FILE" ] || [ -z "$RESTORE_DIR" ]; then
  echo "Usage: $0 <backup_file> <restore_dir>"
  exit 1
fi

mkdir -p "$RESTORE_DIR"

echo "🔹 Restoring from $BACKUP_FILE ..."
tar -xzf "$BACKUP_FILE" -C "$RESTORE_DIR"

echo "✅ Restore completed in $RESTORE_DIR"
