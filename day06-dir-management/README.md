# Day 06: Directory Management (mkdir, rmdir, tree)

## 📌 Overview
This project demonstrates **basic Linux directory management commands** like `mkdir`, `rmdir`, and `tree`.  
It includes a `manage_dirs.sh` script that automatically creates, organizes, and deletes directories.

---

## 📂 Project Structure
```
day06-dir-management/
│── manage_dirs.sh # Script for directory management
│── README.md # Documentation
```
## ⚙️ How to Run

### 1. Clone the repository
```bash
https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
cd day06-dir-management
```
### 2. Make the script executable
```
chmod +x manage_dirs.sh
```
### 3. Run the script
```
./manage_dirs.sh
```
## 📖 What the Script Does

**1.** Creates a **project folder structure** with sub-directories (`src`, `docs`, `tests`, `bin`).

**2** Shows the directory tree using `tree` (if installed).

**3.** Adds nested directories inside `src/` (`api`, `utils`, `models`).

**4** Deletes the `bin/` directory using `rmdir`.

**5.** Shows the **final directory structure**.   
## 🛠️ Example Output
```
📂 Directory Management Demo Started...
✅ Created project structure with src/, docs/, tests/, bin/
📊 Current Project Structure:
project
├── bin
├── docs
├── src
└── tests
✅ Added nested directories under src/
🗑️ Removed bin/ directory
📊 Final Project Structure:
project
├── docs
├── src
│   ├── api
│   ├── models
│   └── utils
└── tests
🎉 Directory Management Demo Completed!
```
## 🔑 Commands Used

* `mkdir -p` → Create directories (including nested).

* `rmdir` → Remove empty directories.

* `tree` → Display directory structure visually.