# Day 14: Memory & Swap Monitoring

This project demonstrates how to monitor **Memory** and **Swap** usage in Linux using `free -m`, `vmstat`, and `ps`.

## 📂 Project Structure
```
day14-memory-swap/
├── scripts/
│ └── memory_swap_report.sh
├── reports/
│ └── sample_report.txt
└── README.md
```
## 🚀 Usage

1. Make the script executable:
    ```
    chmod +x scripts/memory_swap_report.sh
    ```
2. Run the script:
    ```
    bash scripts/memory_swap_report.sh
    ```
3. View the generated report:
    ```
    cat ~/day14-memory-swap/reports/memory_swap_report.txt
    ```
## 📊 What it Shows

* **Memory & Swap summary** → (`free -m`)

* **Detailed memory/CPU snapshot** → (`vmstat 1 5`)

* **Top 10 memory consuming processes** → (`ps -eo ...`)

## 🛠️ Real-Life Use Cases

* Detecting **memory leaks** in applications

* Identifying **swap thrashing** (when RAM is full and system is using swap heavily)

* Troubleshooting **slow server performance**

* Deciding whether to **scale up** (more RAM) or **scale out** (more instances)

✅ With this script, you can generate automated memory & swap usage reports — useful for DevOps engineers in real-time server monitoring.
