#!/usr/bin/env bash
# list NordVPN countries via wofi
mapfile -t countries < <(nordvpn countries list | awk '{print $1}')
chosen=$(printf "%s\n" "${countries[@]}" \
  | wofi --dmenu --insensitive --prompt "Select VPN country:")
if [[ -n "$chosen" ]]; then
  nordvpn connect "$chosen"
fi



