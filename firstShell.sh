#! /bin/bash -x

function nonParam(){
#body of function
	echo "non param function"
}

function param(){
	local firtVar=$1
	local secondVal=$2
	echo $firtVar ',' $secondVal
#body of function
}

nonParam
echo "***************************************"
param "This is from param function" "mayank"
