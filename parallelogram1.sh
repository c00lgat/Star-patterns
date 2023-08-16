#! /bin/bash


function parallelogram(){
	rowCount=0
	colCount=0
	rowSpaceCount=$(( $1-1 ))

	while [ $rowCount -lt $1 ]
	do
		for (( i=0; i<=$rowSpaceCount; i++ )) 
		do
			echo -n " "
		done

		while [ $colCount -lt $1 ]
		do	
			echo -n "*"
			let colCount=$colCount+1
		done

		echo
		let rowSpaceCount=$rowSpaceCount-1
		let rowCount=$rowCount+1
		let colCount=0
	done
}



read -p "Please enter parallelogram size: " size

parallelogram $size
