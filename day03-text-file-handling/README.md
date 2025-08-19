# Day 3: Text File Handling (cat, less, head, tail)

This repository contains examples of basic Linux text file handling commands.

## 📂 Commands Covered
- `cat` → Display, create, or concatenate files
- `less` → View files page by page
- `head` → Show the beginning part of a file
- `tail` → Show the ending part of a file (and follow changes)

---

## ▶️ How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
   cd day03-text-file-handling/scripts
    ```
2. Make scripts executable:   

`chmod +x *.sh`   

3. Run examples:    
```bash
    ./cat_examples.sh
    ./less_examples.sh
    ./head_examples.sh
    ./tail_examples.sh
```
## 📝 Notes 
* Use `cat -n file` to show line numbers.

* Use `less file` to scroll with arrow keys, quit with `q`.

* Use `head -n 5 file` for first 5 lines.

* Use `tail -f file` to watch real-time updates in log files.
