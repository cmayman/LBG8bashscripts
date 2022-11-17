#! /bin/bash

echo "Input filename:"
read filename

#validate a filename was provided
if [ ${#filename} -eq 0 ]

then echo "No filename was provided"
exit

	else

	#using a for loop cat the file to create a list of lines
	numbers=$(cat $filename)

	#initiate sum variable
	sum=0

	#validate each line for an even number and echo even numbers
	#add even numbers to the existing sum variable
	for number in $numbers; do
		if [ $(($number % 2)) -eq 0 ]
			then echo "even number found: $number" 
			sum=$(($sum + $number))
		fi
	done

	#print the sum of even numbers
	echo "the sum of even numbers is: $sum"

	#reset sum to 0
	sum=0

	#while there are lines in a file validate if the they contain an even number 
	#echo even numbers and add them to the existing sum variable
	while read -r LINE ; do 
		if [ $(($LINE % 2)) -eq 0 ]
			then echo "number was: $LINE"
			sum=$(($sum + $LINE))
		fi
	done  < $filename

	#print the overall sum
	echo "the sum of even numbers is $sum"
fi
