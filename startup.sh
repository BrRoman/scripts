#!/bin/bash

# This scripts launches some apps and commands on startup (via Startup Applications Preferences).

firefox &
thunderbird &
code &

while true; do
# Counteract side effects of VSCode (as it seems):
# 1. Set the key repeating's speed every second:
xset r rate 250 75;
# 2. Set "show hidden files in Nautilus" to true every second:
gsettings set org.gnome.nautilus.preferences show-hidden-files true;
sleep 1;
done
