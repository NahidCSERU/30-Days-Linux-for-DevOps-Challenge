#!/bin/bash
# Firewall setup with iptables

echo "🔹 Flushing old rules..."
sudo iptables -F
sudo iptables -X
sudo iptables -Z

echo "🔹 Setting default policy to DROP..."
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

echo "🔹 Allowing loopback traffic..."
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

echo "🔹 Allowing established connections..."
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "🔹 Allowing SSH (Port 22)..."
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

echo "🔹 Allowing HTTP (Port 80)..."
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

echo "🔹 Allowing HTTPS (Port 443)..."
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

echo "🔹 Saving rules..."
sudo sh -c "iptables-save > /etc/iptables/rules.v4"

echo "🔹 Current iptables rules:"
sudo iptables -L -v -n | tee ../logs/iptables_rules.log
