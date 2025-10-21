#!/bin/bash
# log_cleaner.sh - Delete log files older than 7 days

LOG_DIR="./test_logs"
DAYS=7
LOG_FILE="./logs/log_cleaner.log"

echo "[$(date)] Starting log cleanup..." >> "$LOG_FILE"

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \; \
  && echo "[$(date)] Deleted logs older than $DAYS days." >> "$LOG_FILE" \
  || echo "[$(date)] Error during cleanup!" >> "$LOG_FILE"