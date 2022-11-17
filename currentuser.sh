#! /bin/bash

#return whether the user input is the current logged on user
echo "Enter the User to validate whether if they are the current logged on user:" 
read user

if [ $user == "$(whoami)" ]
then echo "you are the currently logged on user"
else echo "you are not the currently logged on user"
fi

