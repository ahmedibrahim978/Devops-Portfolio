#!/bin/bash
# Arrays Practice

SERVERS=("server1" "server2" "server3")

echo "Firsr server: ${SERVERS[0]}"
echo "Second server ${SERVERS[1]}"
echo "All servers ${SERVERS[@]}"
echo "Total server ${#SERVERS[@]}"

echo ""
echo "Checking all servers:"
for server in "${SERVERS[@]}"
do
echo "Pinging: $server"
done
