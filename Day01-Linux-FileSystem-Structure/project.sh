#!/bin/bash
# Day 1: Linux File System Structure - Hands-on Project
# Author: <Nahid Hasan>
# Date: $(16/08/2025)

echo "🔍 Exploring Linux File System Structure..."
echo "------------------------------------------"

# Step 1: Show top-level directories
echo "📂 Top-level directories under / :"
ls / 
echo "------------------------------------------"

# Step 2: Show hidden files also
echo "📂 Hidden files under / :"
ls -la /
echo "------------------------------------------"

# Step 3: Show current working directory
echo "📍 Current Working Directory:"
pwd
echo "------------------------------------------"

# Step 4: Show disk usage
echo "💾 Disk Usage Report:"
df -h
echo "------------------------------------------"

# Step 5: Show mounted partitions
echo "🔗 Mounted Partitions:"
mount | column -t
echo "------------------------------------------"

# Step 6: Save a report file inside home directory
REPORT_FILE="$HOME/filesystem-report.txt"

echo "📝 Saving Report to $REPORT_FILE ..."
{
  echo "Top-level directories:"
  ls /
  echo ""
  echo "Disk Usage:"
  df -h
  echo ""
  echo "Current Working Directory:"
  pwd
} > "$REPORT_FILE"

echo "✅ Report saved successfully!"

# Step 7: Display report content
echo "📄 Report Content:"
cat "$REPORT_FILE"
