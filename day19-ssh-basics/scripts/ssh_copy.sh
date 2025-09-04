#!/bin/bash
# Script: ssh_copy.sh
# Day 19: Automate file copy to/from remote server using scp
# Author: <Nahid Hasan>
# Date: (04.09.2025)


REMOTE_USER="ubuntu"
REMOTE_HOST="192.168.1.100"
LOCAL_FILE="./sample.txt"
REMOTE_PATH="/home/ubuntu/"

# Upload file
echo "⬆️ Uploading $LOCAL_FILE to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH" | tee -a ../logs/ssh_copy.log
scp -o StrictHostKeyChecking=no $LOCAL_FILE ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

# Download back for verification
echo "⬇️ Downloading $REMOTE_FILE back to local system" | tee -a ../logs/ssh_copy.log
scp -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}/$(basename $LOCAL_FILE) ./downloaded_$(basename $LOCAL_FILE)
