#!/bin/bash

check_server() {
echo "Checking server: $1"
echo "Port: $2"
ping -c 1 $1 > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "$1 is online"
else
echo "$1 is offline"
fi
}
check_server "localhost" "80"
check_server "127.0.0.1" "443"
