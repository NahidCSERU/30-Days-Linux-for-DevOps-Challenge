# 📦 Day 25: Backup Scripting (tar, gzip, rsync)

This project demonstrates how to automate **backup and restore** processes using:
- `tar` → Archive files
- `gzip` → Compress backups
- `rsync` → Sync backups to remote/local destination



## 🚀 Features
- Full directory backup with timestamp
- Automatic compression (`.tar.gz`)
- Restore script to recover backups
- Rsync support for syncing backups to remote server



## 📂 Project Structure
```
day25-backup-scripting/
│── README.md # Documentation
│── backup.sh # Backup automation script
│── restore.sh # Restore script
│── backups/ # Backup files stored here
```
## 🔧 Usage

### 1️⃣ Make scripts executable
```
chmod +x backup.sh restore.sh
```
### 2️⃣ Run backup
```
./backup.sh /path/to/source /path/to/day25-backup-scripting/backups
```
### 3️⃣ Run restore
```
./restore.sh /path/to/day25-backup-scripting/backups/backup-<timestamp>.tar.gz /restore/destination
```
## 🌍 Rsync Example (Remote Backup)
```
rsync -avz backups/ user@remote-server:/home/backups/
```
