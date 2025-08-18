#!/bin/bash
# Day 02: Examples of cp command
# Author: <Nahid Hasan>
# Date: $(16/08/2025)

echo "Hello World" > file1.txt
mkdir backup

echo "1. Copy file to another file:"
cp file1.txt file2.txt

echo "2. Copy file into a directory:"
cp file1.txt backup/

echo "3. Copy multiple files into directory:"
cp file1.txt file2.txt backup/

echo "4. Copy directory recursively:"
cp -r backup backup_copy
