#!/bin/bash
# The script needs wireless tool installed. pacman -S wireless_tools

log_file="/home/kim/.drive_sync/documents_log.txt"
max_lines=1000
desired_wifi_ssid="SHARE-RESIDENTE"

current_wifi_ssid=$(iwgetid -r)

# We only want to run if we are connected to a specific wifi
if [ "$current_wifi_ssid" == "$desired_wifi_ssid" ]; then

    # Running the sync
    rclone bisync ~/Documents/Drive 'gdrive:[1] Documents' --remove-empty-dirs --resync --drive-export-formats link.html  --check-access  >> $log_file 2>&1
    result=$?    

    # If there was an error, send me a notification
    if [ $result -ne 0 ]; then
        notify-send "Error in Drive sync" "error code: $result. Check the log for the error message."
    fi

    # Clean the log file so it does not get too much loaded.
    tail -n "$max_lines" "$log_file" > "$log_file.tmp"
    mv "$log_file.tmp" "$log_file"
fi
