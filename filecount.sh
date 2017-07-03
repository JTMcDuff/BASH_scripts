#!/bin/bash

function filecount() {
	NUM=$(($(ls -lah $1 | wc -l) - 3));
	echo "${1}: $NUM";
}
filecount $1;
