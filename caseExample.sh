#! /bin/bash -x

read -p "Day in week " day

case $day in
	1)
		echo "Monday";;
	2)
		echo "Tuesday";;
	3)
		echo "Wenesday";;
	4)
		echo "Thusday";;
	5)
		echo "Friday";;
	6)
		echo "Saturday";;
	7)
		echo "Sunday";;
	*)
		echo "Enter the correct week day";;

esac
