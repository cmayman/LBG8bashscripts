#! /bin/bash
#hash allows you to add comments that are not interpreted by the maching running the the script

#Prompt the user for some inputs, evaluate the variables and generate an output

echo "Please enter a number between 1 and 10"
read num1
echo "Please enter a number between 1 and 10"
read num2

if [ $num1 -eq $num2 ]
then echo "The numbers are equal"
else echo "The numbers are not equal"
fi

#perform a while loop prompting the user to input the numper of loops to print
# (( )) are used to tell bash to perform maths

count=0
echo "How many Loops?"
read loops

while [ $count -lt $loops ]
do ((count++)) 
echo "I'm on loop $count"
done
echo "End of Loops"

#peform a for loop iterating when through a list
#user inputs that have spaces entered by a user is interepreted as a list

echo "Greet each member of the class"
class="Chris Peter Lee"
for trainee in $class
do echo "Hello $trainee"
done

#perform a switch/case statement

echo "Tell me your grade:"
read grade
case $grade in
"A*") echo "Exceptional";;
"A") echo "Excellent";;
"B") echo "Good";;
"C") echo "Average";;
"D") echo "Pass";;
*) echo "Fail";;
esac
