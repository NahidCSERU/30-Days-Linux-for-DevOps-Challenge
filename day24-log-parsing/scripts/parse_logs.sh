#!/bin/bash
# Author: <Nahid Hasan>
# Date: 09.09.2025

LOG_FILE="../logs/sample.log"

echo "🔹 Show all ERROR logs (using grep):"
grep "ERROR" $LOG_FILE
echo "-----------------------------------"

echo "🔹 Show only usernames (using awk):"
awk '{ for(i=1;i<=NF;i++) if ($i ~ /User=/) { split($i,a,"="); print a[2] } }' $LOG_FILE
echo "-----------------------------------"

echo "🔹 Show logs with only timestamp and status (using awk):"
awk '{print $1, $2, $NF}' $LOG_FILE
echo "-----------------------------------"

echo "🔹 Replace 'ERROR' with 'CRITICAL' (using sed):"
sed 's/ERROR/CRITICAL/g' $LOG_FILE
echo "-----------------------------------"

echo "🔹 Extract only Login attempts (using grep + awk):"
grep "Action=Login" $LOG_FILE | awk '{print $3, $4}'
echo "-----------------------------------"
