#!/bin/bash

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

while true; do
    echo "====================================="
    echo "      USER MANAGEMENT MENU"
    echo "====================================="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Exit"
    echo "====================================="

    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            read -p "Enter username to create: " username
            if id "$username" &>/dev/null; then
                echo "User already exists."
            else
                useradd "$username"
                echo "User '$username' created successfully."
            fi
            ;;
        2)
            read -p "Enter username to delete: " username
            if id "$username" &>/dev/null; then
                userdel "$username"
                echo "User '$username' deleted successfully."
            else
                echo "User does not exist."
            fi
            ;;
        3)
            echo "List of system users:"
            cut -d: -f1 /etc/passwd
            ;;
        4)
            echo "Exiting User Management Script."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
