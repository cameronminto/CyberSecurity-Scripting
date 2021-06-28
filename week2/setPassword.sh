#!/bin/bash

#this line will ask the user the input the folder name and store it in variable foldername. The dash p argument will allow the user to enter input on the same line
read -p "type the name of the folder you would like to create: " foldername

#mkir will create the directory in the working directory of the script according to var name foldername
mkdir "$foldername"

#this will allow input from the user but hidden. Once again sotring the input in the var password
read -s -p  "please enter a password for the folder: " password

echo
#inputs the values from var password into the folder previously created and into a file called secrets.txt
echo $password | sha256sum>$foldername/secret.txt

echo

