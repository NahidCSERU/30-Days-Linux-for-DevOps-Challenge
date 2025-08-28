#!/bin/bash
# Ubuntu/Debian automation script
# Author: Nahid Hasan
# Date: 28-08-2025

LOG_FILE="./logs/install.log"
mkdir -p ./logs
exec &> >(tee -a "$LOG_FILE")

echo "🔄 Updating package lists..."
sudo apt update -y

packages=(nginx git docker.io nodejs python3)

for pkg in "${packages[@]}"; do
  echo "📦 Installing $pkg..."
  sudo apt install -y $pkg
done

echo "✅ Installation complete!"
./scripts/check-versions.sh
