#!/bin/bash


for NAME in $@
do
if [ -d $NAME ]
	then
	echo "$NAME is a directory."
elif [ -f $NAME ]
	then
	echo "$NAME is a regular file."
else
	echo "$NAME is another type of file."
fi
ls -l $NAME;
done