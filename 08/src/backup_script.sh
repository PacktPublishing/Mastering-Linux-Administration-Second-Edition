#!/bin/bash
#which directories to backup
backup_dirs="/home/packt"
#destination
destination="/mnt/backup"
#the archive file
date_backup=$(date +"%Y-%m-%d")
hostname=$(hostname)
file="$date_backup-$hostname.tgz"
printf "%s/n" "Backing up $backup_dirs to $destination/$file"
#backing up with tar
tar czf $destination/$file $backup_dirs
printf "%s\n" "Backup finished..."
#listing the backup destination
ls -lh $destination
