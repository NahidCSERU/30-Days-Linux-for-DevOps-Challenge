#!/bin/bash
# Day-23: Example- while loop
# Author: <Nahid Hasan>
# Date: 08.09.2025
count=1
while [ $count -le 5 ]; do
  echo "Loop count: $count"
  ((count++))
done
