#!/bin/bash

# Check if zenity is installed
if ! command -v zenity &> /dev/null; then
    echo "zenity is not installed, lol, installing...."
    sudo apt update && sudo apt install zenity -y
fi

# Infinite loop with echo and GUI
while true; do
    echo "please send me some cash lol"
    sleep 1
    zenity --info --text="Please send me money 💸" --title="Important Message"
done

