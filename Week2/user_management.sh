#!/bin/bash

echo "User Management Script"
echo "1) Create User"
echo "2) Delete User"
echo "3) List Users"
echo ""

read -p "Enter your choice (1/2/3): " choice

case $choice in
  1)
    read -p "Enter username to create: " uname
    sudo useradd $uname
    echo "User $uname created!"
    ;;
  2)
    read -p "Enter username to delete: " uname
    sudo userdel $uname
    echo "User $uname deleted!"
    ;;
  3)
    cut -d: -f1 /etc/passwd
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
