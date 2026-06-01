#!/bin/bash

# System Health Checker
# Written by Ahmed - DevOps Training

Date=$(date)
echo "========================================"
echo "System Health Check"
echo "Date: $DATE"
echo "========================================"

# Check disk space
echo ""
echo "Disk Space:"
df -h

# Check memory
echo ""
echo "Memory Usage:"
top -l 1 | grep PhysMem

# Check running processes
echo ""0
echo "Total Processes Running:"
ps aux | wc -l

# Check Servers
check_server() {
ping -c 1 $1 > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "$1 is online"
else
echo "$1 is offline"
fi
}

echo ""
echo "Server Status:"
check_server "localhost"
check_server "127.0.0.1"

echo ""
echo "==================================="
echo "Health Check Complete"
echo "===================================" 
