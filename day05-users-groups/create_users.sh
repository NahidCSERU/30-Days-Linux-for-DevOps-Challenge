#!/bin/bash
# Day 5 – Users & Groups Management
# Description: Automate creation of groups & users from file list
# Author: Nahid Hasan
# Date: (21/08/2025)

# Exit on error
set -e

# Files
USER_FILE="users.txt"
GROUP_FILE="groups.txt"

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root (sudo)."
  exit 1
fi

echo "🚀 Starting User & Group creation..."

# Create groups
while read -r group; do
  if [ ! -z "$group" ]; then
    if getent group "$group" >/dev/null; then
      echo "⚠️ Group '$group' already exists."
    else
      groupadd "$group"
      echo "✅ Group '$group' created."
    fi
  fi
done < "$GROUP_FILE"

# Create users and assign groups
while IFS=: read -r user group; do
  if [ ! -z "$user" ]; then
    if id "$user" >/dev/null 2>&1; then
      echo "⚠️ User '$user' already exists."
    else
      useradd -m -s /bin/bash -g "$group" "$user"
      echo "✅ User '$user' created with group '$group'."
    fi
  fi
done < "$USER_FILE"

echo "🎉 All users & groups processed successfully!"
