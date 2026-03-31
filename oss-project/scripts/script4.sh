#!/bin/bash

echo "===== LOG ANALYZER ====="

LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]; then
    echo "Analyzing $LOG_FILE"
    
    echo "Total lines:"
    wc -l "$LOG_FILE"

    echo "Last 5 entries:"
    tail -n 5 "$LOG_FILE"

    echo "Error count:"
    grep -i "error" "$LOG_FILE" | wc -l

else
    echo "Log file not found"
fi

echo "===== DONE ====="