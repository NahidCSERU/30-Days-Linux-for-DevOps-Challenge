# Day 4: File Permissions (chmod, chown) – Bash Script Project

This project demonstrates **Linux file permissions** using `chmod` and `chown`.

---

## 📂 Project Structure
```
day04-file-permissions/
│── set-permissions.sh # Change file permissions using chmod
│── change-owner.sh # Change file owner/group using chown
│── demo.sh # Run demo (create file, apply chmod & chown)
│── README.md # Documentation
```
## 🚀 How to Use

### 1️⃣ Make scripts executable
```bash
chmod +x *.sh
```
### 2️⃣ Run chmod script
```   
/set-permissions.sh test.txt 644
```
### 3️⃣ Run chown script
```bash
sudo ./change-owner.sh test.txt nahid
```
### 4️⃣ Run demo
```bash
./demo.sh
```
### 🔍 Example Output 
``` 
-rw-r--r-- 1 nahid nahid 12 Aug 20 12:00 test.txt
```
### 📌 Notes

* `chmod` → Changes file permissions (read/write/execute).

* `chown` → Changes file ownership (user/group).

* Scripts tested on Linux (Ubuntu). May require `sudo` for `chown`.