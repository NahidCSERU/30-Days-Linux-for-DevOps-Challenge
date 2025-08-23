#!/usr/bin/env bash
# Day 07: Ensure locate database exists
# Author: <Nahid Hasan>
# Date: $(23/08/2025)
set -euo pipefail

if command -v updatedb >/dev/null 2>&1; then
  echo "→ Updating locate database (sudo may prompt)..."
  sudo updatedb
else
  echo "✗ 'updatedb' not found. Install plocate or mlocate (see README)."
  exit 1
fi

echo -e "\n== locate '*.png' (first 10) =="
locate -i '*.png' | head -n 10

echo -e "\n== locate by regex for error logs =="
locate -r 'error_[0-9-]+\.log$' | head -n 10

echo -e "\n== locate our playground files quickly =="
locate -r '/playground/.+\.txt$' | head -n 10
