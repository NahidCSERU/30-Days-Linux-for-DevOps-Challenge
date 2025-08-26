#!/usr/bin/env bash
# Author: <Nahid Hasan>
# Date: $(26/08/2025)

set -Eeuo pipefail

# গ্রেসফুলি থামানোর জন্য signal trap
trap 'echo "[long_task $$] Caught SIGINT (Ctrl-C)"; exit 130' INT
trap 'echo "[long_task $$] Caught SIGTERM"; exit 143' TERM

for i in {1..30}; do
  echo "[$(date +%T)] PID=$$ step=$i"
  sleep 1
done

echo "[$(date +%T)] PID=$$ Done."
