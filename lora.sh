#!/bin/bash

if [ $# -lt 2 ]
then
	echo "Errors while passing arguments"
	exit 0
fi

mkdir $1
python3 crawlnfuzz.py -d $1 -o $1/temp.txt
cat $1/temp.txt | grep "=http" > $1/potential.txt
cat $1/potential.txt | qsreplace "http://$2" > $1/staged.txt
touch $1/report.txt

input="$1/staged.txt"
while read -r url
do
	curl -s -L $url -I | grep "$2" && echo "$(tput setaf 1)[VULNERABLE] $url" > $1/report.txt ;
done < $input

len=$(wc $1/report.txt -c | cut -d " " -f 1)

if [ $len -eq 0 ]
then
	echo "$(tput setaf 1)Sorry! No open redirect vulnerability found...\n"
else
	echo "Yayy! Possible open redirect vulnerabilities found...\n"
fi
