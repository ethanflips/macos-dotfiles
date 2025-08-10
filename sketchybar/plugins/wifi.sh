#!/bin/bash

# Get the IP address for en0 (WiFi interface)
IP="$(ifconfig en0 | grep 'inet ' | awk '{print $2}')"

# Set default icon and highlight status
ICON=""  # Disconnected icon (e.g., a laptop)
HIGHLIGHT="on"

# Check if the IP address is non-empty (i.e., we're connected to a network)
if [ -n "$IP" ]; then
    ICON=""  # Connected icon (WiFi)
    HIGHLIGHT="off"
fi

# Set the icon and highlight status in SketchyBar
sketchybar --set $NAME icon=$ICON icon.highlight=$HIGHLIGHT

