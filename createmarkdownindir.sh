#! /bin/bash

#ask for the name and title of a file to be created
echo "Name of file?"
read name
echo "Title?"
read title

#check if the target direcroty exists
cd ~
if [ -d "$(date "+%B-%Y")"  ]; then
	#change directory to the target
	cd "$(date "+%B-%Y")"
else
	#create the target diretory and then change to the new directory
	mkdir "$(date "+%B-%Y")"
	cd "$(date "+%B-%Y")"
fi

#create a new file in the target directory of type markdown
touch $name$(date "+%d").md

#append the title and date to the new file
echo "## ${title} Date: $(date "+%D")" >> $name$(date "+%d").md
