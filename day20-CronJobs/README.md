# Day 20: Cron Jobs (crontab -e)

## 📌 Project Overview
This project demonstrates how to use **Cron Jobs** in Linux (`crontab -e`) to automate tasks such as:
- Taking backups
- Logging timestamps
- Monitoring system health

Cron jobs help DevOps engineers schedule repetitive tasks automatically.

---

## 📂 Files
- `scripts/backup.sh` → Demo backup script
- `scripts/log_time.sh` → Logs the current date & time
- `scripts/system_health.sh` → Captures CPU, memory, and disk usage
- `crontab.txt` → Sample cron job configuration

---

## 🛠️ Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
   cd Day-20-CronJobs
   ```
2. Make scripts executable:
    ```
    chmod +x scripts/*.sh
    ```

3. Edit crontab:
    ```
    crontab -e
    ```

4. Add entries from crontab.txt:
    ```
    # Run backup every day at midnight
    0 0 * * * /bin/bash /path/to/scripts/backup.sh

    # Log date and time every 1 minute
    * * * * * /bin/bash /path/to/scripts/log_time.sh

    # Check system health every 5 minutes
    */5 * * * * /bin/bash /path/to/scripts/system_health.sh
    ```

5. Verify cron jobs:
    ```
    crontab -l
    ```

6. Logs can be found at:
    ```
    tail -f /var/log/syslog
    ```
## 📊 Example Output

- **log_time.sh** → `2025-09-05 17:30:00`

- **system_health.sh** → Shows CPU, memory, and disk usage

- **backup.sh** → Copies demo files into `backup/` folder