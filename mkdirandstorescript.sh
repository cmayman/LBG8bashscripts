#! /bin/bash

cd ~
rm -rf mkdirandstorescript
rm test1.txt
mkdir  mkdirandstorescript
cd mkdirandstorescript
touch file1.txt file2.txt
mv file1.txt ../test1.txt
mv file2.txt test2.sh
echo "#! /bin/bash" > test2.sh
echo "pwd" >> test2.sh
chmod +x test2.sh
./test2.sh

