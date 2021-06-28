#!/bin/bash

Red=$'\e[1;31m'
Blue=$'\e[1;34m'
Green=$'\e[1;32m'
Purple=$'\e[1;35m'
White=$'\e[0m'

echo "$White Welcome to the two number calculator!"

echo "would you like:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read -p "enter from choices 1-4: " operator

case $operator in

	1) echo "$Blue Enter two Numbers to add:"
echo
read -p 'enter the first number: ' a
read -p 'enter the second number: ' b
res=$(echo "$a+$b")
;;
	2) echo "$Green Enter two Numbers to subtract:"
echo
read -p 'enter the first number: ' a
read -p 'enter the second number: ' b
res=$(echo "$a-$b")
;;
	3) echo "$Red Enter two numbers to multiply:"
read -p 'enter the first number: ' a
read -p 'enter the second number: ' b
res=$(echo "$a*$b")
;;
	4) echo "$Purple Enter two numbers to divide:"
read -p 'enter the first number: ' a
read -p 'enter the second number: ' b
res=$(echo "$a/$b")
;;
esac
echo "Result:"
echo $res | bc
echo "$White"
