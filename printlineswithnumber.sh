#! /bin/bash

echo "Input Filename:"
read filename

#exit if no filename was is provided
if [[ ! -f ${filename} ]]
then 	echo "The filename provided does not exist"; exit
else
	#use a while loop and print lines with the line numbers included
	#initialise line variable
	line=0
	while read -r LINE ; do
	#increment line and print number with line
	line=$(($line+1))
	echo "$line | $LINE"
	#redirect input from filename
	done < $filename
fi

awk '{print NR " | " $0}' ${filename}
