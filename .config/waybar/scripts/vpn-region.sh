#!/usr/bin/env bash
# Print current VPN status for Waybar

status=$(nordvpn status)
if echo "$status" | grep -q "Status: Connected"; then
    # Example line: Country: Japan
    country=$(echo "$status" | grep "^Country:" | cut -d':' -f2 | xargs)
    echo "$country"
else
    echo "Disconnected"
fi

