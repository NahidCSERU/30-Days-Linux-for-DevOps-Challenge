# Day 7: File Searching (find, locate)

Learn fast, practical file searching on Linux with **find** and **locate**.
Includes reproducible dataset, ready-made demos, and a mini cheat sheet.

## 🚀 Quick Start
```bash
git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
cd day07-file-searching
chmod +x scripts/*.sh
./scripts/dataset_make.sh   # creates demo tree
./scripts/demo_find.sh      # see find in action
./scripts/demo_locate.sh    # see locate in action (needs mlocate/plocate)
```
## 📦 Requirements

* Linux (Ubuntu/Debian/WSL ok)

* bash

* `find` (GNU findutils)

* `mlocate` or `plocate` for `locate`
## Ubuntu/Debian:
```
sudo apt update
sudo apt install -y plocate   # (recommended) or: sudo apt install mlocate
sudo updatedb
```
## 🧪 Demo dataset
`./scripts/dataset_make.sh` builds this under `./playground`:
```
playground/
├── logs/
│   ├── app.log
│   ├── app.log.1
│   └── error_2025-08-21.log
├── media/
│   ├── photos/{img001.jpg,img002.png}
│   └── videos/{clip.mp4,raw.mov}
├── docs/
│   ├── report_v1.txt
│   ├── report_v2.txt
│   ├── draft.md
│   └── secret/credentials.txt
├── bin/run.sh
└── big/
    └── huge.bin    (~5 MB)
```
## 🔎 Common FIND Patterns
Full cheatsheet: `scripts/cheatsheet_find.md`
# 1) By name / type
```
find playground -type f -name "*.log"
find playground -type d -name "secret"
```
# 2) Case-insensitive / glob vs regex
```
find playground -iname "*.PNG"
find playground -regex '.*report_v[0-9]+\.txt'
```
# 3) By size / time
```
find playground -type f -size +1M
find playground -type f -mtime -1        # modified < 1 day ago
find playground -type f -mmin -10        # modified in last 10 minutes
```
# 4) By perms / owner
```
find playground -type f -perm -111       # executable
find playground -user "$USER"
```
# 5) Execute actions safely
```
find playground -type f -name "*.log" -print0 | xargs -0 gzip -f
find playground -type f -empty -delete
find playground -type f -name "*.md" -exec sed -n '1,3p' {} \;
```
# 6) Exclude paths
```
find playground -path "*/secret/*" -prune -o -type f -print
```
# 7) Structured output
```
find playground -type f -printf '%p|%s|%TY-%Tm-%Td %TH:%TM\n'
```
## ⚡ LOCATE Basics
`locate` searches a **prebuilt index** (faster than `find` on entire disk).
```
sudo updatedb                    # refresh database
locate report_v2.txt
locate -i '*.png' | head -n 20   # case-insensitive
locate -r '.*error_[0-9-]+\.log$'
If results look stale, run sudo updatedb again.
```
## 🧹 Cleanup
```
./scripts/cleanup.sh
```
## ✅ Tips
* Use `-print0` + `xargs -0` to handle spaces/newlines in filenames.

* Prefer `plocate` (faster locate implementation).

* Combine `-prune` to skip heavy trees (e.g., `node_modules`, `.git`).

* For CI: keep demos under a repo sandbox (`./playground`)—never run destructive
    `find ... -delete` on `/` or `$HOME`.