#!/bin/bash
# Day 8 - Custom Process Monitoring Script
# Author: Nahid Hasan
# Date: (24.08.2025)

echo "🔹 Checking top 5 CPU consuming processes..."
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6

echo ""
echo "🔹 Checking top 5 Memory consuming processes..."
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -6

echo ""
echo "🔹 Total number of running processes:"
ps -e | wc -l
