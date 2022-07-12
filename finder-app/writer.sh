#!/bin/bash

if [ $# -eq 2 ]; then
	mkdir -p "$(dirname $1)"
	touch $1
	if [ $? -ne 0 ]; then
		echo "ERROR: File could not be created"
		exit 1
	else
		echo $2 > $1
		exit 0
	fi
else
	echo "ERROR: Invalid Number of Arguments."
	echo "Total Number of Arguments Should be 2."
	echo "The Order of Arguments Should be: "
	echo -e "\t1)Text File Path"
	echo -e "\t2)String to be Written in the File" 
	exit 1
fi
