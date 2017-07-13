#!/bin/bash

# Generates a random number and then log that number.  A practice on using logger and writing functions.

# Generate a random number and echo it out.
NUM=$RANDOM;


#Log that number to the user facility at the info severity.
function logit(){
	echo $1;
	logger -t "randomly" -i -p syslog.warning "The number is $1.";
}
logit $NUM;
