# Day 19: SSH Basics (ssh, scp)

This project demonstrates **SSH basics** for DevOps engineers.  
It covers:
- Connecting to a remote server using `ssh`
- Copying files between local and remote servers using `scp`

---

## 📂 Repo Structure
```
day19-ssh-basics/
├── scripts/
│ ├── ssh_connect.sh # Automate SSH login
│ ├── ssh_copy.sh # Automate file copy with scp
├── logs/
│ ├── ssh_connect.log # SSH connection logs
│ ├── ssh_copy.log # File transfer logs
└── README.md
```
## 🚀 Usage
### 1️⃣ Connect to Remote Server
```
cd scripts
chmod +x ssh_connect.sh
./ssh_connect.sh
```
### 2️⃣ Copy Files to Remote Server
```
cd scripts
chmod +x ssh_copy.sh
./ssh_copy.sh
```
Logs are saved inside `logs/` folder for auditing.

## 📌 Real-Life DevOps Use Cases
- Logging into EC2 instances (AWS) for troubleshooting

- Securely copying config files / scripts across servers

- Automating deployment steps via SSH

- Sharing logs between local and remote environments

## 🔒 Note
For smoother login, set up **SSH key authentication** instead of password:
```
ssh-keygen -t rsa -b 4096
ssh-copy-id ubuntu@192.168.1.100
```
