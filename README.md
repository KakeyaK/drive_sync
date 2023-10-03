This script uses Rclone to sync local folders with Google Drive. It only runs when the computer is connected into a specific wifi (home).
This integration retrieves Google Docs files as links to their onlines editors. To store them locally, we would need to convert them to either docx or odf, both of which caused troubled in syncing with Docs files on cloud.
All scripts are intended to be used with cron, running at regular intervals.

Among the arguments, we can use --drive-acknowlege-abuse to suppress warnings about potentially dangerous files, and --drive-skip-dangling-shortcuts to handle certain Google Drive shortcuts.


Possible additions:
- Add allowed wifis from a wifi-list file.

Reference 

https://rclone.org/drive/
https://rclone.org/commands/rclone_sync/
https://rclone.org/bisync/
https://rclone.org/commands/rclone_check/
