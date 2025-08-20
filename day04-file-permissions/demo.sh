#!/bin/bash
# Day04 : demo.sh
# Description: Demo of chmod and chown
# Author: <Nahid Hasan>
# Date: $(20/08/2025)

echo "📂 Creating demo file..."
echo "Hello World!" > demo.txt
ls -l demo.txt

echo "🔒 Applying chmod 600 ..."
chmod 600 demo.txt
ls -l demo.txt

echo "👤 Changing owner to current user ..."
sudo chown $USER demo.txt
ls -l demo.txt

echo "✅ Demo complete!"
