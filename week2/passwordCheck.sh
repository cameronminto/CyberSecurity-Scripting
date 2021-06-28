#!/bin/bash

#this script will hash an input, and compare it to the stored hashed password made in the previous exercise in secret.txt

read -s -p "Please enter your password for verification: " password

echo $password | sha256sum -c --status  shafolder/secret.txt

if [[ "$?" == "0" ]]; then

	echo
	echo "successful"
	echo "exit status: " $?
	else
	echo
	echo  "unsuccessful"
	$(exit 1)
	echo "exit status: " $?
fi
