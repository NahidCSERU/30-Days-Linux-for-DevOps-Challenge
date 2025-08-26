# Day 10 — Background & Foreground Jobs in Bash (`&`, `jobs`, `fg`, `bg`)

## In this lab, you will learn:
- Run **background jobs** using `&`
- View job **list and status** with `jobs`
- Switch jobs between **foreground and background** using `fg` / `bg`
- Use **`Ctrl+Z` (suspend)** and `bg` to resume jobs
- Handle signals gracefully using **`trap`**
- When and how to use **`disown`** and **`nohup`** for long-running processes

---
## 📂 Structure
```
day10-bg-fg-jobs/
│── README.md
│── .gitignore
└── scripts/
    │── long_task.sh           # Demo long-running task (signal-aware)
    │── start_background.sh    # Starts 2 background jobs and writes logs to logs/
    │── jobs_lab.sh            # (Must be sourced) Lab helpers: lab_start, jj, ff, bb
    │── monitor.sh             # Tail logs in real-time
    │── stop_all.sh            # Stop all running jobs
    └── cpu_hog.sh             # (Optional) CPU-intensive demo
```

## 🚀 Quick Start
```
cd day10-bg-fg-jobs   
chmod +x scripts/*.sh
```
### 1) Start a background job
```
./scripts/start_background.sh
```
### 2) View logs (in a new terminal)
```
./scripts/monitor.sh
```
### 3) Stop all jobs
```
./scripts/stop_all.sh
```
## 🧪 Interactive Lab (jobs/fg/bg Demo)
**Important**: `jobs`, `fg`, and `bg` are **shell built-ins**.
They may not always work correctly if the script runs non-interactively.
To practice interactively, **source** the helper script in your current shell.
```
cd day10-bg-fg-jobs
```
### Load lab helpers in the current shell:
```
source scripts/jobs_lab.sh
```
### Start three background jobs:
```
lab_start
```
### View job list with PID:
```
jj
```
### Bring a job to foreground:
```
ff %1
```
### Press Ctrl+Z → job will be Stopped
### Send it to background:
```
bb %1
```
### Check again:
```
jj
```
## 🧠 What’s happening?
*   `cmd &` → runs the command in **background**; `$!` gives its PID
    
*   `jobs` → shows the **current shell's job table** (interactive only)
    
*   `fg %N` → brings job `%N` to foreground
    
*   `bg %N` → resumes a **stopped job** in background
    
*   `Ctrl+Z` → suspends a running foreground job (SIGTSTP)
    
*   `trap` → gracefully handles signals like SIGINT/SIGTERM
    
*   `disown %N` → removes job from shell table; keeps it running after terminal closes
    
*   `nohup cmd &` → ignores SIGHUP, runs command in background; output goes to `nohup.out`

## 🛡️ Safe Cleanup
```
./scripts/stop_all.sh
```
## ❗ Common Gotchas
*   Jobs/fg/bg may not work properly in **non-interactive scripts**; always **source**.
    
*   Some shells require `set -m` (monitor mode) to enable job control.
    
*   Background jobs may terminate if the terminal is closed → use `nohup` or `disown`.
## 📌 Exercises
*   Run `cpu\_hog.sh` & → monitor PID using `top` or `htop` → practice `fg`/`bg`
    
*   Run `long\_task.sh` in foreground → `Ctrl+Z` → `bg %1` → `fg %1`
    
*   Run `nohup ./scripts/long\_task.sh &` → close terminal → reopen → check if process is still running

