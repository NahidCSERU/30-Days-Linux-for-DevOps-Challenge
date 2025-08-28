#!/bin/bash
# Verify installed package versions
# Author: Nahid Hasan
# Date: 28-08-2025
echo "🔍 Verifying package versions..."

commands=(nginx git docker node nodejs python3)

for cmd in "${commands[@]}"; do
  if command -v $cmd &> /dev/null; then
    echo "✅ $cmd version: $($cmd --version 2>&1 | head -n1)"
  else
    echo "❌ $cmd not installed"
  fi
done
