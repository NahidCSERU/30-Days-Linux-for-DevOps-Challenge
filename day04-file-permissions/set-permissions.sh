#!/bin/bash
# Day04 : set-permissions.sh
# Description: Change file permissions using chmod
# Author: <Nahid Hasan>
# Date: $(20/08/2025)

FILE=$1
PERMISSIONS=$2

if [ -z "$FILE" ] || [ -z "$PERMISSIONS" ]; then
  echo "❌ Usage: ./set-permissions.sh <filename> <permissions>"
  echo "Example: ./set-permissions.sh test.txt 644"
  exit 1
fi

echo "🔒 Changing permissions of $FILE to $PERMISSIONS ..."
chmod $PERMISSIONS $FILE
ls -l $FILE
echo "✅ Permissions updated!"
