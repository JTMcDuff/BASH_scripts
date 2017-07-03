#!/bin/bash

function filecount() {
	NUM=$(($(ls -lah | wc -l) - 3));
	echo $NUM;
}
filecount;
