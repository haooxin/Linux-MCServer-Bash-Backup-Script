# Linux MCServer Bash Backup Script
Script for automatic backup of MCServer folder. The script can be modified and used to backup other resources.

```
sudo timedatectl set-timezone Europe/Warsaw
sudo chmod +x backupMC.sh
sudo crontab -e
```

# Linux CRON
```
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any>
#
# Notice that tasks will be started based on the cron's syst>
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent thro>
# email to the user the crontab file belongs to (unless redi>
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) an>
#
# m h  dom mon dow   command
CRON_TZ=Europe/Warsaw
30 7 * * * /backupMC/backupMC.sh

```
