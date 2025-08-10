#!/bin/bash

sketchybar --set cpu label="$(top -l 2 | grep "^CPU usage" | tail -1 | awk '{ user=$3; sys=$5; gsub("%", "", user); gsub("%", "", sys); print int(user + sys)"%" }')"
