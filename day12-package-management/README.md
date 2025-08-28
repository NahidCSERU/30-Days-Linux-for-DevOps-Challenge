# Day 12: DevOps Package Automation
This project demonstrates **Linux package management** using `apt` (Ubuntu/Debian) and `yum/dnf` (CentOS/RHEL).

Automate the installation of essential DevOps tools on Linux servers using **package managers**.

## Tools Installed
- Nginx
- Git
- Docker
- Node.js
- Python3

## Supported Linux Distributions
- Ubuntu / Debian
- CentOS / RHEL

## Usage

### Ubuntu / Debian
```
chmod +x scripts/install-ubuntu.sh
./scripts/install-ubuntu.sh
```
### CentOS / RHEL
```
chmod +x scripts/install-centos.sh
./scripts/install-centos.sh
```
### Verify Installation
```
./scripts/check-versions.sh
```
## Features

* Automated package installation

* Logging of all actions to `logs/install.log`

* Version verification after install

* Cross-distro support

---

### 🔹 Why this is **DevOps-ready**
1. **Automation**: One-command installation for servers.  
2. **Cross-platform**: Works on Ubuntu/Debian + CentOS/RHEL.  
3. **Logging**: All installs logged for audit purposes.  
4. **CI/CD Ready**: Can integrate with Jenkins/GitHub Actions to provision test servers automatically.  
5. **Professional**: Clean repo structure + README + version verification.  

