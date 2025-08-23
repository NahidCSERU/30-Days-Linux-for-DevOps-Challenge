#!/usr/bin/env bash
# Day 07: File Searching (find, locate)
# Author: <Nahid Hasan>
# Date: $(23/08/2025)
set -euo pipefail
PG="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/playground"

if [[ ! -d "$PG" ]]; then
  echo "Dataset missing. Run ./scripts/dataset_make.sh first."; exit 1
fi

echo "== 1) Find *.log files =="
find "$PG" -type f -name "*.log" -print

echo -e "\n== 2) Case-insensitive find *.PNG =="
find "$PG" -type f -iname "*.png" -print

echo -e "\n== 3) Exclude secret/ and list files =="
find "$PG" -path "*/secret/*" -prune -o -type f -print

echo -e "\n== 4) Files > 1MB (human list) =="
find "$PG" -type f -size +1M -printf "%p\t%k KB\n"

echo -e "\n== 5) Exec: Show first line of each .txt =="
find "$PG" -type f -name "*.txt" -exec sh -c 'echo "--- {}"; head -n 1 "{}"' \;

echo -e "\n== 6) -print0 + xargs demo (count lines in *.txt) =="
find "$PG" -type f -name "*.txt" -print0 | xargs -0 wc -l

echo -e "\n== 7) Recent files (modified < 1 day) =="
find "$PG" -type f -mtime -1 -print

echo -e "\n== 8) Executables =="
find "$PG" -type f -perm -111 -print
