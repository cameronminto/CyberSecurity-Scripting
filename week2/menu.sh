#!/bin/bash
result=$(/bin/bash passwordCheck.sh)

if [[ "$result" == *"0" ]]; then
	echo
	echo "1. Create a Folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	read -p "Enter your choice [1-3]: " option
	else
	echo "Incorrect password. Please run script again"

fi
case $option in

	1)/bin/bash foldermaker.sh
	;;

	2)/bin/bash foldercopier.sh
	;;

	3)/bin/bash setPassword.sh
	;;

esac
