#!/bin/bash
# system_update.sh - Update and upgrade the system automatically

LOG_FILE="./logs/update.log"

echo "[$(date)] Starting system update..." >> "$LOG_FILE"
sudo apt update && sudo apt upgrade -y \
  && echo "[$(date)] System updated successfully!" >> "$LOG_FILE" \
  || echo "[$(date)] Update failed!" >> "$LOG_FILE"