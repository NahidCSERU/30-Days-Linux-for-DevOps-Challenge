#!/usr/bin/env bash
# Day 07: Ensure locate database exists
# Author: <Nahid Hasan>
# Date: $(23/08/2025)
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PG="$ROOT_DIR/playground"

echo "→ Removing dataset at $PG"
rm -rf "$PG"
echo "✓ Cleaned."
