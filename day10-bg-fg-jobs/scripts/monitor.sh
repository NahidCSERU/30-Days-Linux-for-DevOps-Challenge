#!/usr/bin/env bash
# Author: <Nahid Hasan>
# Date: $(26/08/2025)
set -Eeuo pipefail
cd "$(dirname "$0")/.."

mkdir -p logs
echo "Tailing logs/*.log (Ctrl-C to exit)"
tail -F logs/*.log
