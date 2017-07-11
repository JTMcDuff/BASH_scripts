#!/bin/bash

# Accepts a file extension and a prefix, then verbosely renames all appropriate files with the prefix.
# Default behavior is to prefix date

# Nullglob to prevent *.txt being interpreted literally
shopt -s nullglob;

# Prompt user and accept input
read -p "Enter three letter file extension to rename." EXT;

read -p "What prefix should be appended?" PRE;

# Prefix with date if no prefix provided
if [ -z $PRE ]
then
   echo "Renaming all $EXT files with date";
   for FILE in *$EXT
   do
   	    mv -v $FILE $(date '+%Y%m%d')-$FILE;
   done
else
	echo "Renaming all $EXT files with $PRE";
	for FILE in *$EXT
	do
		mv -v $FILE $PRE-$FILE;
	done
fi
