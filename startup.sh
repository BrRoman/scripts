#!/bin/bash

# This scripts launches some apps and commands on startup (via Startup Applications Preferences).

firefox &
thunderbird &
code &

while true; do
# Counteract side effects of VSCode (as it seems) every second:
# 1. Set the key repeating's speed:
xset r rate 250 75;
# 2. Set "show hidden files" to true:
gsettings set org.gtk.Settings.FileChooser show-hidden true

sleep 1;
done
