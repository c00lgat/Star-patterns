#! /bin/bash

function printRow(){
	local COUNTER=0
	local rowLength=$1
	while [ $COUNTER -lt $1 ]
	do
		echo -n "*"
		let COUNTER=$COUNTER+1
	done
	echo
}

read -p "Please enter the size of the rectangle (Height, Width): " height width
COUNTER=0

while [ $COUNTER -lt $height ]
do
	printRow $width
	let COUNTER=$COUNTER+1
done

