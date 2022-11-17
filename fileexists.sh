#! /bin/bash

echo "File to check:"
read "filename"

#validate a filename was provided
if [ ${#filename} -eq 0 ]

then 
echo "No filename was provided!"
exit

else
#change to user's home directory
cd /home/$(whoami)

# return matching filepaths using find
filepaths=$(find "$(cd ..; pwd)" -type f -name ${filename})

	# validate filepath exists and print outcome
	if [ ${filepaths} ]
	then echo "Found the following matches for ${filename}:"
		echo ${filepaths}
	else echo "No matches found for ${filename}"
	fi
fi
