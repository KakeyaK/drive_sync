#!/bin/bash
# The script needs wireless tool installed. pacman -S wireless_tools

desired_wifi_ssid="SHARE-RESIDENTE"

current_wifi_ssid=$(iwgetid -r)

if [ "$current_wifi_ssid" == "$desired_wifi_ssid" ]; then
    rclone bisync ~/Pictures/Drive 'gdrive:[3] Pictures' --remove-empty-dirs --resync --drive-export-formats link.html --check-access >> /home/kim/.drive_sync/pictures_log.txt 2>&1
fi
