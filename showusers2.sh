#!/bin/bash

#This practice script accepts a number value and echoes out that many lines of /etc/passwd.

read -p "How many lines?" LIMIT;
NUM=1;

#while loop to read and echo out, with a break for the limit.
((LIMIT++)); 
while read line 
do
	echo "$NUM:  $line.";
	((NUM++));
	if [ $NUM -eq $LIMIT ] 
	then
	    break
	fi
done < /etc/passwd	
