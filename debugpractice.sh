#!/bin/bash -vx

# Practice using debug flags with BASH

# This ls should pass.
ls .

#This ls should fail, but the script will continue.
ls /not/here

#This ls is present and will execute.
ls -lah .
