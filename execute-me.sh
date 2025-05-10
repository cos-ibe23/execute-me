#!/bin/bash

if ! command -v zenity &> /dev/null; then
    echo "zenity is not installed. Attempting to install..."

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if ! command -v apt &> /dev/null; then
            echo "APT not found. Cannot install zenity. Please install manually."
            exit 2
        fi

        sudo apt update && sudo apt install -y zenity

    elif [[ "$OSTYPE" == "darwin"* ]]; then
        if ! command -v brew &> /dev/null; then
            echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh"
            exit 2
        fi

        brew install zenity
    else
        echo "Unsupported OS. Please install zenity manually."
        exit 2
    fi
fi

while true; do
    echo "Cos-ibe"
    sleep 1
    zenity --info --text="Cos-ibe 💸" --title="Important Message"
done

