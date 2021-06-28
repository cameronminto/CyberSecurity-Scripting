#!/bin/bash

while [ "$url" != "exit" ]
do
	read -p "Please type in the URL of the file you want to download, or type "exit" to exit: " url
	if [ "$url" != "exit" ]; then
		read -p "where do you want to save the file?" location
		wget -P "$location" "$url"
	fi
done

