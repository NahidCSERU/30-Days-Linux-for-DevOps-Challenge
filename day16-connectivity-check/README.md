# Day 16: Connectivity Check (ping, curl, wget)

## 📌 Project Overview
This project demonstrates how to use **ping, curl, and wget** to check connectivity in Linux.  
It is useful for DevOps engineers to verify network reachability, HTTP responses, and resource availability.

## 📂 Project Structure
```
day16-connectivity-check/
├── connectivity-check.sh # Main Bash script
├── hosts.txt # List of hosts/URLs to test
├── results/ # Output reports
└── README.md
```
## ⚙️ Usage
### 1. Clone the repo:
   ```
   git clone https://github.com/yourname/day16-connectivity-check.git
   cd day16-connectivity-check
   ```
### 2. Add your target hosts in `hosts.txt` (one per line).

### 3. Run the script:
```
chmod +x connectivity-check.sh
./connectivity-check.sh
```
### 4. Check the results:
```
cat results/report-<date>.log
```
## 🛠 Tools Used

- **ping** → Check if host is reachable.

- **curl** → Fetch HTTP response (API/Web check).

- **wget** → Validate file/resource availability.

## ✅ Sample Output
🌐 Checking host: google.com  
✅ google.com is reachable (ping success)  
➡️ CURL Test: HTTP/2 200  
✅ wget succeeded (resource available)

With this script, you can automate **basic connectivity checks** for multiple servers/services.
Great for **DevOps troubleshooting** and **pre-deployment validation**.