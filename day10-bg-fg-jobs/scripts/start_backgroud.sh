#!/usr/bin/env bash
# Author: <Nahid Hasan>
# Date: $(26/08/2025)
set -Eeuo pipefail
cd "$(dirname "$0")"

mkdir -p ../logs

chmod +x ./long_task.sh

# ২টা ব্যাকগ্রাউন্ড জব চালু করি
./long_task.sh > ../logs/task1.log 2>&1 &
pid1=$!
./long_task.sh > ../logs/task2.log 2>&1 &
pid2=$!

echo "$pid1 $pid2" > ../.pids

echo "Started background jobs: $pid1, $pid2"
# নন-ইন্টারেকটিভ শেলে jobs সবসময় দেখায় না, তাই || true
jobs -l || true
echo "Logs: logs/task1.log, logs/task2.log"
