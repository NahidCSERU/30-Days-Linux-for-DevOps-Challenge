#!/bin/bash
# ================================================
# Day 21: Logs & Monitoring (journalctl, /var/log/)
# Author: <Nahid Hasan>
# Date: (06/09/2025)

# ================================================

REPORT_FILE="$HOME/logs-report-$(date +%F).txt"

echo "================================" | tee $REPORT_FILE
echo "📊 System Logs & Monitoring Report - $(date)" | tee -a $REPORT_FILE
echo "================================" | tee -a $REPORT_FILE

# 1. Last 10 system boots
echo -e "\n🔹 Last 10 boots:" | tee -a $REPORT_FILE
journalctl --list-boots | head -n 10 | tee -a $REPORT_FILE

# 2. Authentication failures from auth.log
echo -e "\n🔹 Authentication failures (/var/log/auth.log):" | tee -a $REPORT_FILE
grep "Failed password" /var/log/auth.log | tail -n 10 | tee -a $REPORT_FILE

# 3. Successful logins
echo -e "\n🔹 Successful logins (/var/log/auth.log):" | tee -a $REPORT_FILE
grep "Accepted password" /var/log/auth.log | tail -n 10 | tee -a $REPORT_FILE

# 4. Recent package installations/removals
echo -e "\n🔹 Package management logs (/var/log/dpkg.log):" | tee -a $REPORT_FILE
grep " install " /var/log/dpkg.log | tail -n 5 | tee -a $REPORT_FILE
grep " remove " /var/log/dpkg.log | tail -n 5 | tee -a $REPORT_FILE