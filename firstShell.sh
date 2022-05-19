#! /bin/bash -x
declare -a myArray
myArray[0]="first value"
myArray[1]="Second value"
myArray[2]="third value"
myArray[3]="fourth value"
checkValue=0;

echo "all the value of array " ${myArray[@]}
echo "length of array " ${#myArray[@]}
echo "to get specific array value " ${myArray[2]}

value=''
for((i=0;i<${#myArray[@]};i++))
do
	if [ $i -lt ${#myArray[@]} -a $i -ne 0 ]
	then
		value=$value" , "${myArray[$i]}
	else
		value=$value" "${myArray[$i]}
	fi
done
echo $value
