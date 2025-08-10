#!/bin/bash

ram=(
    icon=
    icon.color=$WHITE
    update_freq=3
    script="$PLUGIN_DIR/ram.sh"
)

sketchybar --add item ram right \
    --set ram "${ram[@]}"
