#! /bin/bash


function reverseTriangle(){
	rowCount=0
	colCount=0
	spaceCount=$1-1
	
	while [ $rowCount -lt $1 ]
	do
	#	while [ $colCount -lt $1 ]
	#	do
			for (( i=0; i<=$spaceCount; i++ ))
			do
				echo -n " "
			done
				
			while [ $colCount -le $rowCount ]
			do
				echo -n "*"
				let colCount=$colCount+1
			done
			echo
			let spaceCount=$spaceCount-1
			let colCount=0
			let rowCount=$rowCount+1
	#	done
	done
}




read -p "Please enter the triangle size: " size

reverseTriangle $size
