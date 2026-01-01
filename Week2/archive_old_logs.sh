#!/bin/bash

LOG_DIR="/var/log"
BACKUP_DIR="$HOME/log_backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR

echo "Archiving logs from $LOG_DIR..."

tar -czf "$BACKUP_DIR/logs_$TIMESTAMP.tar.gz" $LOG_DIR/*.log

echo "Archive created: $BACKUP_DIR/logs_$TIMESTAMP.tar.gz"
