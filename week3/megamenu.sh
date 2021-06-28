#!/bin/bash

while [ "$option" != "8" ]
do
result=$(/bin/bash passwordCheck.sh)

white=$'\e[0m'
red=$'\e[1;31m'
blue=$'\e[1;34m'
purple=$'\e[1;35m'
green=$'\e[1;32m'



if [[ "$result" == *"0" ]]; then
	echo
	echo "$green ACCESS GRANTED"
	echo
	echo "$blue 1. Create a Folder"
	echo " 2. Copy a folder"
	echo " 3. Set a password"
	echo " 4. Calculator"
	echo " 5. Create Week Folders"
	echo " 6. Check filenames"
	echo " 7. Download a file"
	echo " 8. Exit"
	read -p "$purple Enter your choice [1-8]: $white" option
	else
	echo "$red Incorrect password. Please run script again $white"

fi
case $option in

	1)/bin/bash foldermaker.sh
	;;

	2)/bin/bash foldercopier.sh
	;;

	3)/bin/bash setPassword.sh
	;;
	4)/bin/bash calculator.sh
	;;
	5)/bin/bash megafoldermaker.sh
	;;
	6)/bin/bash filenames.sh
	;;
	7)/bin/bash internetdownloader.sh

esac
done
