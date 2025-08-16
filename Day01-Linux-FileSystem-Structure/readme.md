# Day 1: Linux File System Structure  

## 📌 What is Linux File System?  
The Linux filesystem is a **hierarchical tree structure** where everything starts from the root (`/`).  
All files, directories, and devices are organized under `/`.  

## 📂 Common Directories  
- `/` → Root directory (সবকিছুর শুরু)  
- `/home` → User files (প্রতিটি user এর আলাদা folder)  
- `/etc` → Configuration files  
- `/var` → Logs, variable data  
- `/bin` → Essential binaries  
- `/usr` → User programs and libraries  
- `/tmp` → Temporary files  

## 🎯 Why Important for DevOps?  
- Config files modify করতে হবে `/etc` তে।  
- Logs check করতে হবে `/var/log` এ।  
- Scripts রাখবে `/usr/local/bin` এ।  
- Automation / Debugging এর জন্য filesystem ভালোভাবে জানতে হবে।  

---
