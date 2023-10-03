#!/bin/bash

desired_wifi_ssid="SHARE-RESIDENTE"

current_wifi_ssid=$(iwgetid -r)

if [ "$current_wifi_ssid" == "$desired_wifi_ssid" ]; then
    # Run your shell command here
    # For example, run the "my_command.sh" script
    /path/to/your/shell/command.sh
fi
