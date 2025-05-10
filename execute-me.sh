#!/bin/bash

if ! command -v zenity &> /dev/null; then
    echo "zenity is not installed, lol, installing with Homebrew...."
    
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh"
        exit 1
    fi

    brew install zenity
fi

while true; do
    echo "Cos-ibe"
    sleep 1
    zenity --info --text="Cos-ibe 💸" --title="Important Message"
done

