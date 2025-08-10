#!/bin/bash

SIZE=9
WIDTH=50

up=(
    width=0
    label.width=$WIDTH
    label.align=right
    update_freq=3
    y_offset=5
    icon=⇡
    label.font.size=$SIZE
    icon.font.size=11
    icon.color=$TEAL
    script="$PLUGIN_DIR/network_rates.sh"
)
down=(
    label.width=$WIDTH
    label.align=right
    y_offset=-5
    icon=⇣
    label.font.size=$SIZE
    icon.font.size=11
    icon.color=$LAVENDER
)

sketchybar --add item net.up right \
    --set net.up "${up[@]}" padding_right=15\
    \
    --add item net.down right \
    --set net.down "${down[@]}" padding_right=15
