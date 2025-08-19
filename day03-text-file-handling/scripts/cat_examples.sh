
#!/bin/bash
# Day-02: Examples of cat command
# Author: <Nahid Hasan>
# Date: $(19/08/2025)

echo "===== Using cat with sample.txt ====="

echo -e "\n1. Display file content:"
cat ../sample.txt

echo -e "\n2. Show line numbers:"
cat -n ../sample.txt

echo -e "\n3. Concatenate multiple files:"
cat ../sample.txt ../sample.txt
