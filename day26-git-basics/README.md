# Day 26: Git Basics (init, clone, commit, push)

This project demonstrates the **fundamental Git commands** every developer must know:
- `git init` → Initialize a new repository
- `git clone` → Clone a remote repository
- `git add` & `git commit` → Track and save changes
- `git push` → Upload commits to remote repository



## 📌 Learning Goals
- Understand how Git tracks changes
- Create and manage commits
- Work with remote repositories (GitHub)
- Practice collaboration workflows

## 📂 Project Structure
```
day26-git-basics/
│── README.md # Documentation
│── example.txt # Sample file for practice
│── commands.md # Common git commands
```
## Quick Start

### 1️⃣ Initialize Git
```
git init
```
### 2️⃣ Clone a repository
```
git clone https://github.com/<username>/<repo>.git
```

### 3️⃣ Add & Commit changes
```
echo "Hello Git!" >> example.txt
git add example.txt
git commit -m "Added example.txt"
```

### 4️⃣ Push to GitHub
```
git branch -M main
git remote add origin https://github.com/<username>/day26-git-basics.git
git push -u origin main
```
## 📖 References

*   [Git Documentation](https://git-scm.com/doc)
    
*   [GitHub Guides](https://guides.github.com/)