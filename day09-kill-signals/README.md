# Day 09 – Kill & Signals (kill, killall)

This project demonstrates how to manage processes and send signals in Linux using **kill** and **killall** commands.  
It also provides a Bash script with a menu-driven interface to practice.

---

## 📂 Project Structure
```
day09-kill-signals/
│── kill-signals.sh # Bash script
│── README.md # Documentation
```
## 🚀 Getting Started

### 1️⃣ Make the script executable
```
chmod +x kill-signals.sh
```
### 2️⃣ Run the script
```
./kill-signals.sh
```
## 📖 Features in the Script

**1. List running processes**  
Uses `ps` to display top 10 processes.

**2. Start a sample process**   
Starts a `sleep 1000 & `process to test kill commands.

**3. Kill by PID**   
Sends `SIGKILL (-9)` to a process by PID.

**4. Kill by Name**  
Uses `killall` to terminate processes by name.

**5. Send Custom Signal**  
Example: `SIGSTOP`, `SIGCONT`, `SIGTERM`.   
## 📝 Example Usage
```
==============================
 Day 09: Kill & Signals Demo
==============================
1. List running processes
2. Start a sample process (sleep 1000)
3. Kill process by PID (using kill)
4. Kill process by name (using killall)
5. Send custom signal (SIGSTOP/SIGCONT)
6. Exit
==============================
Choose an option [1-6]:
```
## 🔑 Key Learnings

* `kill` → Send signals to a process by PID.

* `killall` → Kill processes by name.

* Common signals:

    * `SIGTERM (15)` – Terminate gracefully.

    * `SIGKILL (9)` – Force kill.

    * `SIGSTOP` – Pause process.

    * `SIGCONT` – Resume process.
✅ With this project, you can practice **Linux process management & signals** using Bash scripts in a real-world DevOps style.
