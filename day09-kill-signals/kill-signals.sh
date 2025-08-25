#!/bin/bash
# Day 09 – Kill & Signals
# Description: Demonstrates how to send signals to processes using kill & killall
# Author: Nahid Hasan
# Date: (25.08.2025)

# Function: show menu
show_menu() {
  echo "=============================="
  echo " Day 09: Kill & Signals Demo"
  echo "=============================="
  echo "1. List running processes"
  echo "2. Start a sample process (sleep 1000)"
  echo "3. Kill process by PID (using kill)"
  echo "4. Kill process by name (using killall)"
  echo "5. Send custom signal (SIGSTOP/SIGCONT)"
  echo "6. Exit"
  echo "=============================="
}

while true; do
  show_menu
  read -p "Choose an option [1-6]: " choice

  case $choice in
    1)
      echo ">>> Running processes (top 10):"
      ps -e -o pid,comm --sort=-pid | head -n 10
      ;;
    2)
      echo ">>> Starting process: sleep 1000 &"
      sleep 1000 &
      echo "Process started with PID: $!"
      ;;
    3)
      read -p "Enter PID to kill: " pid
      kill -9 $pid && echo "Process $pid killed!" || echo "Failed to kill $pid"
      ;;
    4)
      read -p "Enter process name to kill: " pname
      killall -9 $pname && echo "All processes named '$pname' killed!" || echo "No process named '$pname' found"
      ;;
    5)
      read -p "Enter PID: " pid
      read -p "Enter signal (e.g., SIGSTOP, SIGCONT, SIGTERM): " signal
      kill -s $signal $pid && echo "Signal $signal sent to $pid" || echo "Failed to send signal"
      ;;
    6)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice. Try again!"
      ;;
  esac
done
