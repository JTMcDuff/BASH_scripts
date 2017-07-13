#!/bin/bash

# Generates a random number and then log that number.  A practice on using logger.

# Generate a random number and echo it out.
NUM=$RANDOM;
echo $RANDOM;

#Log that number to the user facility at the info severity.
logger -t myscript -p syslog.warning "The number is $NUM.";
