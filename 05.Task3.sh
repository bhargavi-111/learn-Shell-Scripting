
#!/bin/bash

echo "===== SERVER INFORMATION COLLECTOR ====="

read -p "Enter server environment (dev/test/prod): " environment

read -p "Enter server owner name: " owner

echo ""
echo "===== SERVER DETAILS ====="

echo "Environment: $environment"
echo "Server Owner: $owner"

echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Disk Usage:"

df -h /

echo "========================================"