#!/bin/bash

# ==============================
# Day-16: Connectivity Check Script
# Tools: ping, curl, wget
# Author: <Nahid Hasan>
# Date: (01/09/2025)

# ==============================

# Input file
HOSTS_FILE="hosts.txt"
RESULT_DIR="results"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
RESULT_FILE="$RESULT_DIR/report-$DATE.log"

# Create results folder if not exists
mkdir -p $RESULT_DIR

echo "🔍 Connectivity Check Report - $DATE" > $RESULT_FILE
echo "======================================" >> $RESULT_FILE

while read -r host; do
    echo -e "\n🌐 Checking host: $host" | tee -a $RESULT_FILE
    
    # 1️⃣ Ping Test
    echo "➡️ PING Test:" | tee -a $RESULT_FILE
    ping -c 2 $host &>> $RESULT_FILE
    if [ $? -eq 0 ]; then
        echo "✅ $host is reachable (ping success)" | tee -a $RESULT_FILE
    else
        echo "❌ $host is not reachable (ping failed)" | tee -a $RESULT_FILE
    fi

    # 2️⃣ Curl Test (HTTP response code)
    echo "➡️ CURL Test:" | tee -a $RESULT_FILE
    curl -Is --max-time 5 $host | head -n 1 | tee -a $RESULT_FILE

    # 3️⃣ Wget Test (Check if file can be downloaded)
    echo "➡️ WGET Test:" | tee -a $RESULT_FILE
    wget --spider -T 5 -q $host
    if [ $? -eq 0 ]; then
        echo "✅ wget succeeded (resource available)" | tee -a $RESULT_FILE
    else
        echo "❌ wget failed (resource unavailable)" | tee -a $RESULT_FILE
    fi

    echo "--------------------------------------" >> $RESULT_FILE
done < $HOSTS_FILE

echo -e "\n✅ Report saved to: $RESULT_FILE"
