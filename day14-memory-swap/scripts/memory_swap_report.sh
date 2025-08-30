#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name : memory_swap_report.sh
# Description : Generates memory and swap usage report using free and vmstat
# Author      : Nahid Hasan
# Date        : 30.08.2025
# -----------------------------------------------------------------------------

REPORT_FILE="$HOME/day14-memory-swap/reports/memory_swap_report.txt"

# Create reports directory if not exists
mkdir -p "$(dirname "$REPORT_FILE")"

# Write header
echo "==============================" > "$REPORT_FILE"
echo " Memory & Swap Usage Report" >> "$REPORT_FILE"
echo " Generated on: $(date)" >> "$REPORT_FILE"
echo "==============================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Memory usage (free -m)
echo "🔹 Memory Usage (free -m):" >> "$REPORT_FILE"
free -m >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# vmstat snapshot
echo "🔹 VMStat Snapshot (vmstat 1 5):" >> "$REPORT_FILE"
vmstat 1 5 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Top memory consuming processes
echo "🔹 Top 10 Memory Consuming Processes:" >> "$REPORT_FILE"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 11 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "✅ Memory & Swap report generated at $REPORT_FILE"
