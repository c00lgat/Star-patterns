#! /bin/bash 
#
function printFullRow(){
	local COUNTER=0
	local rowLength=$1
	while [ $COUNTER -lt $1 ]
	do
		echo -n "*"
		let COUNTER=$COUNTER+1
	done
	echo
}

function printHollowRow(){
	local rowCounter=0
	local colCounter=0
	while [ $rowCounter -lt $2 ]
	do
		while [ $colCounter -lt $1 ]
		do
			if [[ $rowCounter -eq 0 || $(( rowCounter+1 )) -eq $2 ]]
			then
				echo -n "*"
				let colCounter=$colCounter+1
			elif [[ $colCounter -eq 0 || $(( colCounter+1 )) -eq $1 ]]
			then
				echo -n "*"
				let colCounter=$colCounter+1
			else
				echo -n " "
				let colCounter=$colCounter+1
			fi
		done
		colCounter=0
		let rowCounter=$rowCounter+1
		echo
	done
}



read -p "Please enter width and height of the hollow rectangle: " width height
COUNTER=0

printHollowRow $width $height
