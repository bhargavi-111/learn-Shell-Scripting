#!/bin/bash

echo "===== DISK MONITORING ====="

disk_usage=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')

echo "Current Disk Usage: $disk_usage%"

if [ "$disk_usage" -ge 80 ]
then
    echo "WARNING: Disk usage is HIGH!"
    echo "Please investigate and clean unnecessary files."
else
    echo "SUCCESS: Disk usage is NORMAL."
fi

echo "===== MONITORING COMPLETED ====="