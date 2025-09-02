#!/bin/bash
# Day 17 - DevOps Daily Practice
# Project: Port & Connection Monitor
# Author: Nahid Hasan
# Date : (02.09.2025)


LOG_FILE="/var/log/port_monitor.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "===============================" >> $LOG_FILE
echo "Port Monitor Log - $DATE" >> $LOG_FILE
echo "===============================" >> $LOG_FILE

# 1. Active Listening Ports
echo "[+] Listening Ports:" >> $LOG_FILE
ss -tulnp >> $LOG_FILE

# 2. Connection States (ESTABLISHED, LISTEN, TIME_WAIT)
echo "[+] Connection States Count:" >> $LOG_FILE
ss -ant | awk '{print $1}' | sort | uniq -c >> $LOG_FILE

# 3. Top 5 processes using network
echo "[+] Top 5 Processes using Network:" >> $LOG_FILE
ss -tunap | awk '{print $6}' | sort | uniq -c | sort -nr | head -5 >> $LOG_FILE

# 4. Alert for Unknown Ports (example: anything above 50000)
UNKNOWN_PORT=$(ss -tulnp | awk '{print $5}' | grep -E ':[5-9][0-9]{4}' | wc -l)

if [ $UNKNOWN_PORT -gt 0 ]; then
    echo "[ALERT] Unknown High Ports Detected: $UNKNOWN_PORT" | tee -a $LOG_FILE
fi

echo "Log saved at $LOG_FILE"
