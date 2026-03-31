#!/bin/bash

echo "===== VS CODE DETECTION ====="

if command -v code &> /dev/null
then
    echo "VS Code is installed"
    echo "Location: $(which code)"
else
    echo "VS Code is NOT installed"
fi

CONFIG="$HOME/.config/Code"

if [ -d "$CONFIG" ]; then
    echo "Config directory exists: $CONFIG"
else
    echo "Config directory not found"
fi

echo "===== DONE ====="