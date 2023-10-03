#!/bin/bash
# The script needs wireless tool installed. pacman -S wireless_tools

desired_wifi_ssid="SHARE-RESIDENTE"

current_wifi_ssid=$(iwgetid -r)

if [ "$current_wifi_ssid" == "$desired_wifi_ssid" ]; then
    rclone bisync ~/Music/Drive 'gdrive:[2] Music' --remove-empty-dirs --resync --drive-export-formats  link.html --check-access  >> /home/kim/.drive_sync/music_log.txt 2>&1
fi
