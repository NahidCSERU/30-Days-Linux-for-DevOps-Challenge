# 🔍 Port & Connection Monitor (Day 17 - DevOps Daily Practice)

This project is a simple **network monitoring script** built using `ss` and `awk`.  
It helps DevOps engineers track **open ports, active connections, and suspicious activity** on a server.

---

## 🚀 Features
- List all **listening ports** with associated processes  
- Show **connection states count** (ESTABLISHED, LISTEN, TIME_WAIT, etc.)  
- Display **top processes using network connections**  
- Detect & alert for **unknown high ports (50000+)**  
- Save detailed logs in `/var/log/port_monitor.log`  

---

## 📦 Installation
Clone the repo:
```
git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
cd day17-port-monitor
```
## ⚡ Usage

1. Make script executable:
```
chmod +x port_monitor.sh
```
2. Run the script:
```
./port_monitor.sh
```
## 📊 Example Output
```
Port Monitor Log - 2025-09-02
===============================
[+] Listening Ports:
tcp   LISTEN  0  128  0.0.0.0:22   0.0.0.0:*   users:(("sshd",pid=800,fd=3))

[+] Connection States Count:
   5 ESTAB
   3 LISTEN
   2 TIME_WAIT

[+] Top 5 Processes using Network:
  6 users:(("sshd",pid=800,fd=3))
  2 users:(("nginx",pid=1200,fd=5))

[ALERT] Unknown High Ports Detected: 1
```
## 🛠️ Automation

You can automate this script with **cron**:
```
*/5 * * * * /path/to/port_monitor.sh
```

This will run the script every **5 minutes** and log the results.
## 📂 Sample Logs

Check `sample_logs/port_monitor.log` for a sample run.
## 📌 Next Steps

- Add email/slack alert for critical ports

- Export results as JSON for ELK/Prometheus

- Containerize the script with Docker