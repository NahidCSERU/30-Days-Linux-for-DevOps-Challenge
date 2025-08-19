#!/bin/bash
# Day-02: Examples of tail command
# Author: <Nahid Hasan>
# Date: $(19/08/2025)
echo "===== Using tail with sample.txt ====="

echo -e "\n1. Show last 10 lines (default):"
tail ../sample.txt

echo -e "\n2. Show last 5 lines:"
tail -n 5 ../sample.txt

echo -e "\n3. Follow file updates (press Ctrl+C to stop):"
tail -f ../sample.txt
