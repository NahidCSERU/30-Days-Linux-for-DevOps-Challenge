#!/bin/bash
# Day 8 - Processes with ps command
# Author: Nahid Hasan
# Date: (24.08.2025)

echo "🔹 List all running processes (ps -e)"
ps -e | head -10

echo ""
echo "🔹 Show processes of current user (ps -u $USER)"
ps -u $USER | head -10

echo ""
echo "🔹 Show process tree (ps -ejH)"
ps -ejH | head -10

echo ""
echo "✅ ps command demo finished!"
