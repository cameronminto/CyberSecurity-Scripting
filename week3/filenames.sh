#!/bin/bash


for tests in $(cat $1)

do

	if [[ -d $tests ]]; then
 echo "$tests : that is a directory"
fi
	if [[ -f $tests ]] ; then
echo "$tests : that is a valid file" ; else
	echo "$tests : I don't know what that is"
fi
done
