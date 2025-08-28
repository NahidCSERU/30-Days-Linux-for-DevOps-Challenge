#!/bin/bash
# CentOS/RHEL automation script
# Author: Nahid Hasan
# Date: 28-08-2025

LOG_FILE="./logs/install.log"
mkdir -p ./logs
exec &> >(tee -a "$LOG_FILE")

echo "🔄 Updating package lists..."
sudo yum update -y || sudo dnf update -y

packages=(nginx git docker nodejs python3)

for pkg in "${packages[@]}"; do
  echo "📦 Installing $pkg..."
  sudo yum install -y $pkg || sudo dnf install -y $pkg
done

echo "✅ Installation complete!"
./scripts/check-versions.sh
