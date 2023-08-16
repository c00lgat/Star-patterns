#! /bin/bash


function triangle(){
	local rowCounter=1
	local colCounter=1

	while [ $rowCounter -le $1 ]
	do
		while [[ $colCounter -le  $rowCounter ]]
		do
			echo -n "*"
			let colCounter=$colCounter+1	
		done

		echo
		let rowCounter=$rowCounter+1
		let colCounter=0
	done
}

read -p "Please enter the size of the triangle: " size

triangle $size
