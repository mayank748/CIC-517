#! /bin/bash -x

function nonParam(){
#body of function
	echo "non param function"
}

function param(){
	local firtVar=$1
	echo $1
#body of function
}

nonParam
echo "***************************************"
param "This is from param function"
