#!/bin/bash

backup_files="/ServerMC/*"
dest="/backupMC"

echo -e "\e[033mList of 7 days old files:\e[0m"
find $dest -mtime +7 -type f -ls
echo
echo -e "\e[033mList of 7 days old files to delete:\e[0m"
find $dest -not -name '*.sh' -mtime +7 -type f -ls
echo
echo -e "\e[033m7 days old files: \e[032mREMOVED\e[0m"
sudo find $dest -not -name '*.sh' -mtime +7 -type f -delete

hour=$(date +"%H%M")
day=$(date +"%Y.%m.%d-"$hour)

if [[ "$hour" == "0730" ]]; 
then
	archive_file="BackupMC-$day-auto.tgz"
else
	archive_file="BackupMC-$day-manual.tgz"
fi

echo -e "\e[033mBacking up $backup_files to $dest/$archive_file\e[0m"
date
echo

sudo tar czf $dest/$archive_file $backup_files

echo
echo -e "\e[032mBackup Finished\e[0m"
date

ls -lh $dest
