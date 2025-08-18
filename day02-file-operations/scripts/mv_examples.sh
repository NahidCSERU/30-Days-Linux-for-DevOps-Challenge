#!/bin/bash
# Day-02: Examples of mv command
# Author: <Nahid Hasan>
# Date: $(16/08/2025) 

echo "Test File" > old.txt

echo "1. Rename a file:"
mv old.txt new.txt

echo "2. Move file into a directory:"
mkdir moved
mv new.txt moved/

echo "3. Move multiple files:"
echo "A" > a.txt
echo "B" > b.txt
mv a.txt b.txt moved/
