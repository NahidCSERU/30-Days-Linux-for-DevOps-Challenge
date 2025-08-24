#!/bin/bash
# Day 8 - Processes with htop command
# Author: Nahid Hasan
# Date: (24.08.2025)

# check if htop installed
if ! command -v htop &> /dev/null
then
    echo "❌ htop not installed. Install with: sudo apt install htop -y"
    exit
fi

echo "🔹 Launching htop (Press 'q' to quit)"
htop
