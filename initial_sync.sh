# This shuold be parallel

rclone bisync ~/Music/Drive 'gdrive:[2] Music' --remove-empty-dirs --drive-export-formats link.html  --check-access --resync

rclone bisync ~/Videos/Drive 'gdrive:[4] Videos' --remove-empty-dirs --drive-export-formats link.html  --check-access  --resync

rclone bisync ~/Documents/Drive 'gdrive:[1] Documents' --remove-empty-dirs --drive-export-formats link.html  --check-access --resync

rclone bisync ~/Pictures/Drive 'gdrive:[3] Pictures' --remove-empty-dirs --drive-export-formats link.html --check-access --resync 