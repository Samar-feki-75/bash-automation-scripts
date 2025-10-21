# Bash Automation Scripts

This project contains **simple Bash scripts** to automate common administrative tasks such as cleaning up logs, backing up important directories, and simulating system updates.

It’s designed for learning **basic Bash scripting, conditionals, loops, and logging**.

---


## 🗂️ Project Structure

```text
bash-automation-scripts/
├── scripts/
│   ├── log_cleaner.sh        # Deletes old log files
│   ├── backup.sh             # Archives directories with timestamped backups
│   └── update.sh             # Simulates system update
├── logs/                     # Stores logs of script runs (ignored by Git)
├── backups/                  # Stores backup archives (ignored by Git)
├── test_logs/                # Sample log files for testing scripts
└── README.md

```
---

## ⚡ How to Use

### 1️⃣ Test Log Cleaner
```bash
./scripts/log_cleaner.sh ./test_logs
cat logs/log_cleaner.log

```
### 2️⃣ Backup a Directory

```bash
./scripts/backup.sh ./scripts
cat logs/backup.log

```
### 3️⃣ Simulate System Update

```bash
./scripts/update.sh
cat logs/update.log

```

## 🧰 Features

Timestamped backups

Log files for every script run

Safe test environment (test_logs)

Works locally without root privileges

Easily adaptable to Linux servers, VMs, or cloud environments

## ✅ License

This project is open-source and free to use for learning purposes.