#!/usr/bin/env bash
# নোট: jobs/fg/bg শেল built-in; তাই এই ফাইলটা source করতে হবে:
# source scripts/jobs_lab.sh
# Author: <Nahid Hasan>
# Date: $(26/08/2025)

set -Eeo pipefail

lab_start() {
  mkdir -p logs
  ./scripts/long_task.sh > logs/lab1.log 2>&1 &
  echo "Started lab job #1 as %1, PID=$!"
  ./scripts/long_task.sh > logs/lab2.log 2>&1 &
  echo "Started lab job #2 as %2, PID=$!"
  ./scripts/long_task.sh > logs/lab3.log 2>&1 &
  echo "Started lab job #3 as %3, PID=$!"
  echo "Use: jj (jobs -l), fg %1, bg %1, kill %1, disown %1"
}

jj() { jobs -l; }
ff() { fg "${1:-%1}"; }   # fg %1 by default
bb() { bg "${1:-%1}"; }   # bg %1 by default

lab_help() {
  cat <<'EOF'
LAB COMMANDS:
  lab_start         -> তিনটা ব্যাকগ্রাউন্ড জব স্টার্ট
  jj                -> jobs -l (জব লিস্ট)
  ff %N             -> fg %N (ফোরগ্রাউন্ডে আনুন)
  bb %N             -> bg %N (ব্যাকগ্রাউন্ডে পাঠান)
HINTS:
  1) কোনো ফোরগ্রাউন্ড কমান্ড চলতে থাকলে Ctrl+Z চাপুন -> থেমে যাবে (stopped)
     তারপর 'bg %1' দিন -> ব্যাকগ্রাউন্ডে চলবে।
  2) 'disown %1' দিলে টার্মিনাল বন্ধ হলেও জব বেঁচে থাকবে (nohup-এর মতো)।
EOF
}

echo "Loaded jobs lab. Run: lab_start ; then jj ; ff %1 ; bb %1 ; lab_help"
