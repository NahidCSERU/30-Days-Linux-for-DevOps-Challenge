#!/bin/bash
# Day 06: Directory Management (mkdir, rmdir, tree)
# Author: Nahid Hasan
# Date: (22.08.2025)

# Exit if any command fails
set -e

echo "📂 Directory Management Demo Started..."

# 1️⃣ Create base project folder
mkdir -p project/{src,docs,tests,bin}
echo "✅ Created project structure with src/, docs/, tests/, bin/"

# 2️⃣ Show structure using tree (if installed)
if command -v tree &> /dev/null
then
    echo "📊 Current Project Structure:"
    tree project
else
    echo "⚠️ 'tree' command not found. Install it with: sudo apt-get install tree -y"
    ls -R project
fi

# 3️⃣ Create nested folders in src
mkdir -p project/src/{api,utils,models}
echo "✅ Added nested directories under src/"

# 4️⃣ Remove a directory
rmdir project/bin
echo "🗑️ Removed bin/ directory"

# 5️⃣ Show final structure
if command -v tree &> /dev/null
then
    echo "📊 Final Project Structure:"
    tree project
else
    ls -R project
fi

echo "🎉 Directory Management Demo Completed!"
