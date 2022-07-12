#!/bin/bash

if [ $# -eq 2 ]; then
	if [ ! -d $1 ]; then
		echo "ERROR: Directory: $1 Does Not Exist."
		exit 1
	else
		echo "The number of files are $(find $1 -type f | wc -l) and the number of matching lines are $(grep -r $2 $1 | wc -l)"
	fi
	exit 0
else
	echo "ERROR: Invalid Number of Arguments."
	echo "Total Number of Arguments Should be 2."
	echo "The Order of Arguments Should be: "
	echo -e "\t1)File Directory Path"
	echo -e "\t2)String to be Searched in the Directory Path" 
	exit 1
fi
