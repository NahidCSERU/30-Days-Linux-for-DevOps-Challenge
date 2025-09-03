#!/bin/bash
# Day-18: Firewall setup with UFW (Uncomplicated Firewall)
# Author: <Nahid Hasan>
# Date: (/09/2025)

echo "🔹 Updating package lists..."
sudo apt update -y

echo "🔹 Installing ufw if not installed..."
sudo apt install -y ufw

echo "🔹 Resetting existing rules..."
sudo ufw --force reset

echo "🔹 Allowing SSH (Port 22)..."
sudo ufw allow 22/tcp

echo "🔹 Allowing HTTP (Port 80)..."
sudo ufw allow 80/tcp

echo "🔹 Allowing HTTPS (Port 443)..."
sudo ufw allow 443/tcp

echo "🔹 Enabling firewall..."
sudo ufw --force enable

echo "🔹 Firewall Status:"
sudo ufw status verbose | tee ../logs/ufw_status.log
