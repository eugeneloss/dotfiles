#!/bin/bash

# Check if the surfshark_wg or surfshark_ipv6 interfaces are up
if ip a | grep -q "surfshark_wg"; then
    IP=$(curl -s ifconfig.me)  # Get the external IP address
    echo "VPN: Connected | IP: $IP"
elif ip a | grep -q "surfshark_ipv6"; then
    IP=$(curl -s ifconfig.me)  # Get the external IP address
    echo "VPN: Connected (IPv6) | IP: $IP"
else
    IP=$(curl -s ifconfig.me)  # Get the external IP address
    echo " No VPN | IP: $IP"
fi

