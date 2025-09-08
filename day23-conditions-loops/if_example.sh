#!/bin/bash
# Day-23: Example: if condition
# Author: <Nahid Hasan>
# Date: 08.09.2025

echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
  echo "✅ $num is greater than 10"
elif [ $num -eq 10 ]; then
  echo "⚡ $num is equal to 10"
else
  echo "❌ $num is less than 10"
fi
