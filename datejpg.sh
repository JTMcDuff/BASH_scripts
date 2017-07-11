#!/bin/bash

# Nullglob to prevent *.txt being interpreted literally
shopt -s nullglob

# Iterate through current files and rename with date.
for FILE in *.jpg
do
	mv -v $FILE $(date '+%Y%m%d')-$FILE
done
