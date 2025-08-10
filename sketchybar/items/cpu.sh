#!/bin/bash

cpu=(
    icon=
    icon.color=$WHITE
    update_freq=3
    script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu right \
    --set cpu "${cpu[@]}"
