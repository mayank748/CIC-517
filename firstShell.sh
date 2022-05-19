#! /bin/bash -x
declare -a myArray
#myArray[0]="first value"
#myArray[1]="Second value"
#myArray[2]="third value"
#myArray[3]="fourth value"
#checkValue=0;

#echo "all the value of array " ${myArray[@]}
#echo "length of array " ${#myArray[@]}
#echo "to get specific array value " ${myArray[2]}

function TakeUserInput(){
	local arlength=$1
	for((i=0;i<arlength;i++))
	do
		read -p "Enter the value " userInput
		myArray[$i]=$userInput
	done
}
#sum=num+sum
function printArray(){
	for((i=0;i<${#myArray[@]};i++))
	do
		if [ $i -lt ${#myArray[@]} -a $i -ne 0 ]
		then
			value=$value" , "${myArray[$i]}
		else
			value=$value" "${myArray[$i]}
		fi
	done
}

value=''
userInput=''

read -p "length of array " arryLength
TakeUserInput $arryLength
printArray

echo $value
