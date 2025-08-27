# Day 11 — Service Management with systemctl (systemd)


This project shows how to create and manage systemd services: a long-running service, a templated instance service, and a oneshot job triggered by a systemd timer.


## Prerequisites
- Linux with systemd (Ubuntu/Debian/Arch/Fedora/Amazon Linux 2023 etc.)
- `sudo` privileges
## 📁 Repo Structure
```
day11-systemctl/
├── README.md
├── scripts/
│ ├── install.sh
│ ├── uninstall.sh
│ ├── start.sh
│ ├── stop.sh
│ ├── restart.sh
│ ├── status.sh
│ ├── enable.sh
│ ├── disable.sh
│ └── logs.sh
├── env/
│ └── hello.env
└── systemd/
├── hello.service
├── hello@.service
├── hello-job.service
└── hello-job.timer
```
## Quick Start
```bash
# 1) Clone and enter
git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
cd day11-systemctl


# 2) Install the demo services (copies units, env, app, reloads systemd)
sudo ./scripts/install.sh


# 3) Start the long-running demo service
sudo ./scripts/start.sh


# 4) Check status & logs
./scripts/status.sh
./scripts/logs.sh


# 5) Enable on boot & restart
sudo ./scripts/enable.sh
sudo ./scripts/restart.sh


# 6) Stop/Disable/Uninstall when done
sudo ./scripts/stop.sh
sudo ./scripts/disable.sh
sudo ./scripts/uninstall.sh
```
## What gets installed
-------------------

*   App script → `/usr/local/bin/hello.sh`
    
*   Env file → `/etc/default/hello`
    
*   Units → `/etc/systemd/system/hello.service`, `hello@.service`, `hello-job.service`, `hello-job.timer`
    

Features
--------

*   **hello.service** — long-running service (Type=simple) that prints a message every `$INTERVAL` seconds.
    
*   **hello@.service** — templated unit; run multiple instances: `hello@alpha`, `hello@beta`.
    
*   **hello-job.timer** — timer triggers **hello-job.service** every minute (demo schedule).
## Useful Commands (manual)
```
# reload units after changes
sudo systemctl daemon-reload


# start/stop/status
sudo systemctl start hello.service
sudo systemctl status hello.service
sudo systemctl stop hello.service


# enable/disable on boot
sudo systemctl enable hello.service
sudo systemctl disable hello.service


# logs (last 100 lines, follow)
journalctl -u hello.service -n 100 -f


# templated instances
sudo systemctl start hello@alpha.service
sudo systemctl start hello@beta.service


# timer
sudo systemctl start hello-job.timer
systemctl list-timers | grep hello
journalctl -u hello-job.service --since "-10 min"
```
