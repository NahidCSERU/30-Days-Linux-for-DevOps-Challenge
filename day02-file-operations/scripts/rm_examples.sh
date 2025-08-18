#!/bin/bash
# # Day-02: Examples of rm command
# Author: <Nahid Hasan>
# Date: $(16/08/2025)
# Create demo files & directories

mkdir demo
echo "Delete me" > demo/file.txt

echo "1. Remove single file:"
rm demo/file.txt

echo "2. Remove empty directory:"
rmdir demo

# Recreate for recursive delete
mkdir demo
echo "File inside" > demo/file2.txt

echo "3. Remove directory with contents recursively:"
rm -r demo

echo "4. Force remove without prompt:"
rm -f *.log 2>/dev/null || echo "No .log files found"
