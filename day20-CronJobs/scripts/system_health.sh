#!/bin/bash
# Day-20: Monitors CPU, Memory, Disk
# Author: <Nahid Hasan>
# Date: (05.09.2025)
LOGFILE="$HOME/system_health.log"

{
  echo "---- System Health Report: $(date) ----"
  echo "CPU Load:"
  uptime
  echo "Memory Usage:"
  free -h
  echo "Disk Usage:"
  df -h
  echo "----------------------------------------"
} >> $LOGFILE
