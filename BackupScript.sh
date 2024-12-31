#!/bin/bash

# Creating Backup
source_dir=$1
target_dir=$2

timestamp=$(date '+%y-%m-%d-%H-%M-%S')

backup_dir="${target_dir}/backup_${timestamp}"

function create_backup {
zip -r "${backup_dir}.zip" "$source_dir" > /dev/null


#echo "backup created successfully"


<<comment
if [ $? -eq 0 ]; then
        echo "Backup created successfully"
else
        echo "Problem in creating backup"
fi

comment
}


function perform_rotation {
        backup=($(ls -t "$target_dir"/backup_*.zip))
       echo "${backup[@]}"

       if [ ${#backup[@]} -gt 4 ]; then
               backup_to_remove=("${backup[@]:4}")
               echo "Older than 4 backups will be removed"
               echo "${backup_to_remove[@]}"

        for backup in "${backup_to_remove[@]}";
        do
                       echo "Removing $backup"
                       rm -rf "$backup"

        done
        fi


}

create_backup
perform_rotation

