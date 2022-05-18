#! /bin/bash -x

INTERMIDIATE=80
FIRST_CLASS=60
TOTAL=100
ZERO=0

read -p "Enter your mark " marks

if [ $marks -le $TOTAL -a $marks -ge $ZERO ]
then
	if [ $marks -ge $INTERMIDIATE ]
	then
		echo "INTERMIDIATE"
	elif [ $marks -ge $FIRST_CLASS  -a  $marks -lt $INTERMIDIATE ]
		then 
			echo "First class"
		else
			echo "need to improve"
	fi
else
	echo "Enter the correct number"
fi
