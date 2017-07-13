#!/bin/bash

#This practice script echoes out /etc/passwd with a number.
NUM=1;

#while loop to read and echo out
while read line
do
	echo "$NUM:  $line.";
	((NUM++));
done < /etc/passwd	
