#!/bin/bash
# Network Diagnostics Script
# Author: Nahid Hasan
# Day 15: Logs IP details and connectivity checks for monitoring.


LOG_DIR="./logs"
mkdir -p $LOG_DIR

IP_LOG="$LOG_DIR/ip_status.log"
CONN_LOG="$LOG_DIR/connectivity.log"

echo "==== IP STATUS ($(date)) ====" >> $IP_LOG
ip addr >> $IP_LOG
echo "" >> $IP_LOG

# Default Gateway Test
GATEWAY=$(ip route | grep default | awk '{print $3}')

echo "==== CONNECTIVITY CHECK ($(date)) ====" >> $CONN_LOG
echo "Pinging Gateway: $GATEWAY" >> $CONN_LOG
ping -c 4 $GATEWAY >> $CONN_LOG 2>&1

# External connectivity test
echo "Pinging Google DNS (8.8.8.8)" >> $CONN_LOG
ping -c 4 8.8.8.8 >> $CONN_LOG 2>&1

echo "Pinging Domain (google.com)" >> $CONN_LOG
ping -c 4 google.com >> $CONN_LOG 2>&1

echo "--------------------------------------" >> $CONN_LOG
