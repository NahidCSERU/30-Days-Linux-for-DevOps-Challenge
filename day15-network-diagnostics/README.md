# Day 15:  Network Diagnostics Project (ip addr)

## 📌 Overview
This project automates **network troubleshooting and monitoring** using Bash.  
It checks:
- Network interface status (`ip addr`)
- Default gateway connectivity
- External connectivity (Google DNS & google.com)
- Logs results into `logs/` directory

---

## 📂 Project Structure
```
network-diagnostics/
├── check_network.sh # Main script
├── logs/
│ ├── connectivity.log # Connectivity test logs
│ ├── ip_status.log # IP & NIC status logs
└── README.md # Documentation
```
## ⚡ Usage
### 1. Clone the repository:
```
git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
cd day15-network-diagnostics
```
### 2. Make the script executable:
```
chmod +x check_network.sh
```
### 3. Run the script:
```
./check_network.sh
```
### 4. Check logs:
```
cat logs/ip_status.log
cat logs/connectivity.log
```
## 📊 Example Log Output

### IP Status
```
==== IP STATUS (Sun Sep 1 22:10:03 UTC 2025) ====
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 ...
    inet 192.168.0.105/24 brd 192.168.0.255 scope global dynamic enp0s3
       valid_lft 86398sec preferred_lft 86398sec

```
### Connectivity
```
==== CONNECTIVITY CHECK (Sun Sep 1 22:10:03 UTC 2025) ====
Pinging Gateway: 192.168.0.1
64 bytes from 192.168.0.1: icmp_seq=1 ttl=64 time=0.421 ms
...

Pinging Google DNS (8.8.8.8)
64 bytes from 8.8.8.8: icmp_seq=1 ttl=118 time=20.1 ms
...

Pinging Domain (google.com)
64 bytes from google.com (142.250.190.14): icmp_seq=1 ttl=118 time=18.3 ms


```
