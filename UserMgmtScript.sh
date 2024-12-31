#! /bin/bash

# User-Management Script
function user_add {
        read -p "Enter username: " username
        read -sp "Enter password: " password

        sudo useradd -m $username -p $password
        echo "User $username is created"
}


function user_delete {
        read -p "Enter username: " username

        sudo userdel $username
        echo "User $username is deleted"
}

function user_message {
        echo "Welcome to the user management program"
        echo "To add a user, please type C or c"
        echo "To delete a user, please type D or d"
}

case ${1,,} in
	c)  
        echo "Create User -- Progressing"
        user_add
        ;;
        d) 
        echo "Delete User -- Progressing"
        user_delete
        ;; 
        *)
        echo "Sorry! There is some issue"
        user_message
        ;;
esac

