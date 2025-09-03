# 🔥 Day 18: Firewall Project (UFW + iptables)

This project demonstrates how to configure **firewall rules** using both `ufw` and `iptables`.

---

## 📌 Features
- Allow **SSH (22)**, **HTTP (80)**, **HTTPS (443)**
- Block all other inbound traffic
- UFW simple setup
- iptables advanced setup with policies
- Logs stored inside `logs/`

---

## 🚀 How to Run

### UFW Setup


```
cd scripts
chmod +x setup_ufw.sh
./setup_ufw.sh
```
### Check status:
```
ufw status verbose
```
### iptables Setup
```
cd scripts
chmod +x setup_iptables.sh
./setup_iptables.sh
```

### Check rules:
```
sudo iptables -L -v -n
```
## 📂 Logs

- `logs/ufw_status.log` → UFW firewall status

- `logs/iptables_rules.log` → iptables firewall rules

## 📖 Learning Notes

- **UFW** = easy-to-use frontend for iptables (beginner-friendly)

- **iptables** = low-level, more control (advanced)

- Best practice:

    - Always allow SSH before enabling firewall

    - Default policy → DROP

    - Open only required ports