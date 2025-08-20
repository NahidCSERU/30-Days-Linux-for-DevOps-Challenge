#!/bin/bash
# Day04 : change-owner.sh
# Description: Change file owner/group using chown
# Author: <Nahid Hasan>
# Date: $(20/08/2025)
FILE=$1
OWNER=$2

if [ -z "$FILE" ] || [ -z "$OWNER" ]; then
  echo "❌ Usage: sudo ./change-owner.sh <filename> <new-owner>"
  echo "Example: sudo ./change-owner.sh test.txt nahid"
  exit 1
fi

echo "👤 Changing owner of $FILE to $OWNER ..."
sudo chown $OWNER $FILE
ls -l $FILE
echo "✅ Owner changed!"
