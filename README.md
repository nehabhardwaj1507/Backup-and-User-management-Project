# Backup-and-User-management-Project

## Overview:
This repository contains a shell script designed to automate two primary tasks in a Linux environment:
1. #### User Management: Create, modify, and delete user accounts.
2. #### Backup Automation: Securely back up specified directories to a designated backup location.
The goal of this project is to enhance efficiency in user management and streamline the backup process, ensuring that administrators can easily manage user accounts and maintain secure backups of critical data.

## Features of User Management:
Create new users with predefined settings.
Modify user details such as password or home directory.
Delete user accounts safely, including removal of their associated files.

## Features of Backup Automation:
Create backups of user-specified directories.
Compress and store backups in a safe location.
Timestamped backup file names for easy identification and version control.

## Prerequisites
Before running the script, ensure you have the following:
A Linux-based environment (e.g., Ubuntu, CentOS, Debian, etc.).
Root or sudo access for managing user accounts and directories.
Basic understanding of shell scripting.

## Steps to run user-management script
1. Clone the repository to your local machine
2. Ensure the shell script is executable: chmod 777 <user_management.sh>
3. To run the shell script, use the following command: ./<user_management.sh> with argument (c or d)
4.  Now you can manage user and see output.

The script provides options for:
1. Creating a user: You will be prompted for the username, password, and other settings.
2. Modifying a user: You can change a user's password or home directory.
3. Deleting a user: Safely delete a user account, along with their home directory and files.

## Steps to run backup script
1. The same way you can run backup script too.
2. Make sure you pass arguments at run time, for eg. ./<backup.sh> with <source_file> <target_file>

The backup functionality includes:
1. Select directories to back up.
2. Choose a backup destination.
3. Backup compression: Backups are compressed using tar and stored in a designated directory.

## Create a Cron Job for Backup Automation
1. Open file for crontab: crontab -e
2. Edit file and create a cron job take backup every second:
   
   \* \* \* \* \* <backup-script.sh> <path/to/source_file> <path/to/destination_file>
          
             
