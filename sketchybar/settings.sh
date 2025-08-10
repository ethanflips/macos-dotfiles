#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

FONT="Hack Nerd Font"
PADDINGS=3 # All paddings use this value (icon, label, background)

bar=(
    height=33
    color=$TRANSPARENT
    border_color=$TRANSPARENT
)

default=(
    updates=when_shown

    icon.font.family="$FONT"
    icon.font.style="Bold"
    icon.font.size=14.0
    icon.color=$ICON_COLOR
    icon.highlight_color=$GREY
    icon.padding_left=$PADDINGS
    icon.padding_right=$PADDINGS

    label.font.family="$FONT"
    label.font.style="Semibold"
    label.font.size=14.0
    label.color=$WHITE
    label.highlight_color=$GREY

    padding_right=$PADDINGS
    padding_left=$PADDINGS

    popup.align=right
    popup.background.border_width=1
    popup.background.corner_radius=5
    popup.background.border_color=$POPUP_BORDER_COLOR
    popup.background.color=$POPUP_BACKGROUND_COLOR

    background.corner_radius=5
    background.height=25
    background.border_width=1
)

popup_events=(
    mouse.entered
    mouse.exited
    mouse.exited.global
)

popup() {
    sketchybar --set $NAME popup.drawing=$1
}
