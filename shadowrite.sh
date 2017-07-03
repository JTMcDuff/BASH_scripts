#!/bin/bash

if [ -a /etc/shadow ]
then
  echo "Shadow passwords are enabled.";
fi

if [ -w /etc/shadow ]
then
  echo "You have permissions to edit /etc/shadow.";
else
	echo "You DO NOT have permissions to edit /etc/shadow.";
fi
