# Day 5 – Users & Groups (useradd, groupadd)

## 📌 Overview
This project demonstrates how to **automate Linux user and group creation** using a Bash script.

- Uses `groupadd` to create groups from a list
- Uses `useradd` to create users and assign them to groups
- Reads user and group details from text files

---

## 📂 Repo Structure
```
day05-users-groups/
│── create_users.sh # Main script
│── users.txt # List of users (username:group)
│── groups.txt # List of groups
│── README.md # Documentation
```


## 🚀 How to Run

### 1️⃣ Make script executable
```bash
chmod +x create_users.sh
```
## 2️⃣ Run as root (with sudo)
```
sudo ./create_users.sh
```
## 📝 Example
groups.txt  
```
dev  
admin  
qa
```
users.txt  
```
alice:dev  
bob:dev  
charlie:admin  
david:qa  
```
## Output 
```
🚀 Starting User & Group creation...
✅ Group 'dev' created.
✅ Group 'admin' created.
✅ Group 'qa' created.
✅ User 'alice' created with group 'dev'.
✅ User 'bob' created with group 'dev'.
✅ User 'charlie' created with group 'admin'.
✅ User 'david' created with group 'qa'.
🎉 All users & groups processed successfully!
```

## 📖 What You Learn

* How to manage **Linux users and groups**

* Automating with **Bash scripting**

* Importance of running scripts with `sudo`