# Day 21: Logs & Monitoring (journalctl, /var/log/)

This project demonstrates how to monitor and analyze Linux system logs using `journalctl`, `/var/log/`, and Bash scripting.

## 🚀 Features
- Shows last 10 boots from `journalctl`
- Extracts failed and successful login attempts from `/var/log/auth.log`
- Displays recent package installations/removals from `dpkg.log`
- Fetches recent kernel errors/warnings with `journalctl -p 3`
- Checks disk usage
- Lists top CPU-consuming processes

## 📂 Repo Structure
```
day21-logs-monitoring/
├── logs-monitor.sh
└── README.md
```
## ▶️ Usage
1. Make the script executable:
   ```
   chmod +x logs-monitor.sh
2. Run the script:
    ```
    ./logs-monitor.sh
    ```
3. Report will be generated in your home directory:
    ```
    ~/logs-report-YYYY-MM-DD.txt
    ```
## 📊 Sample Output
```
📊 System Logs & Monitoring Report - 2025-09-06

🔹 Last 10 boots:
 -2  9d7e6b3d9a2b4c77b9a1e3  ...

🔹 Authentication failures (/var/log/auth.log):
Sep  6 12:32:10 server sshd[1203]: Failed password for invalid user test from 192.168.1.10

🔹 Successful logins (/var/log/auth.log):
Sep  6 12:40:15 server sshd[1208]: Accepted password for halcyon from 192.168.1.10
```
✅ This script is useful for **DevOps engineers** to quickly analyze important system events and generate monitoring reports.