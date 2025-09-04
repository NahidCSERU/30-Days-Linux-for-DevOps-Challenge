#!/bin/bash
# Script: ssh_connect.sh
# Day 19: Purpose Automate SSH login to a remote server
# Author: <Nahid Hasan>
# Date: 04.09.2025


REMOTE_USER="ubuntu"
REMOTE_HOST="192.168.1.100"

echo "🔹 Attempting to connect to $REMOTE_USER@$REMOTE_HOST ..." | tee -a ../logs/ssh_connect.log
ssh -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_HOST}
