#!/bin/bash

# Get the external IP address
IP=$(curl -s ifconfig.me)

# Check if VPN is connected
if ip a | grep -q 'surfshark_wg'; then
    echo "{\"text\":\"󱚿\",\"class\":\"connected\", \"tooltip\":\"VPN connected | IP: $IP\"}" | jq --unbuffered --compact-output
else
    echo "{\"text\":\"󱚾\",\"class\":\"disconnected\", \"tooltip\":\"VPN disconnected | IP: $IP\"}" | jq --unbuffered --compact-output
fi

