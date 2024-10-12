#!/bin/bash

# Get current clipboard content
content=$(wl-paste)
# Output in JSON format
echo "{\"text\":\"\",\"tooltip\": \"$content\"}" | jq --unbuffered --compact-output
echo "{\"text\":\"󱚿\",\"tooltip\":\"VPN connected\"}" | jq --unbuffered --compact-output


