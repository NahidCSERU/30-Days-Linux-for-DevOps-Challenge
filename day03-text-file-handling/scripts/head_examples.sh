#!/bin/bash
# Day-02: Examples of head command
# Author: <Nahid Hasan>
# Date: $(19/08/2025)

echo "===== Using head with sample.txt ====="

echo -e "\n1. Show first 10 lines (default):"
head ../sample.txt

echo -e "\n2. Show first 5 lines:"
head -n 5 ../sample.txt

echo -e "\n3. Show first 20 bytes:"
head -c 20 ../sample.txt
