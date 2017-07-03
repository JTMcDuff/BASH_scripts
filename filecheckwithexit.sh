#!/bin/bash


for NAME in $@
do
if [ -d $NAME ]
	then
	echo "$NAME is a directory."
	exit 1;
elif [ -f $NAME ]
	then
	echo "$NAME is a regular file."
	exit 0;
else
	echo "$NAME is another type of file."
	exit 2;
fi
ls -l $NAME;
done