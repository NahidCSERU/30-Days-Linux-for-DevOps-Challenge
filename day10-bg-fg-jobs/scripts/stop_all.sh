#!/usr/bin/env bash
# Author: <Nahid Hasan>
# Date: $(26/08/2025)
set -Eeuo pipefail
cd "$(dirname "$0")/.."

if [[ -f .pids ]]; then
  echo "Stopping PIDs: $(cat .pids)"
  xargs -r kill -TERM < .pids || true
  rm -f .pids
else
  echo "No .pids file. Stopping by job spec if available..."
fi

# যদি current shell-এ job থাকে
jobs -p 2>/dev/null | xargs -r kill -TERM || true
echo "Stopped. Check 'jobs' or logs/ for status."
