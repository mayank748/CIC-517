#! /bin/bash -x

condition='false'
trueCondition='value'
echo "*****************************************"
if [ $condition == 'item' ]
then
	echo "this is item"
fi
echo "*****************************************"
if [ $condition == 'item' ]
then
	echo "this is item"
else
	echo "this is not item"
fi
echo "*****************************************"
if [ $condition == 'item' ]
then
	echo "this is item"
elif [ $condition == 'false' ]
then
	echo "the condition is false"
else
	echo "the conditon is not false"
fi
echo "*****************************************"


#nested if
if [ $condition == 'true' ]
then
	echo "Condition is true "
	if [ $trueCondition == 'value' ]
	then
		echo "Condition is value"
	else
		echo "Condition is not value"
	fi
else 
	echo "Condition is false "
fi

#to test
