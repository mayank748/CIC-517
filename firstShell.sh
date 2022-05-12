#! /bin/bash -x

#for loop
for file in `ls *.txt`
do
	echo $file
done

for((i=0;i<10;i++))
do
	echo $i
done


#while loop
count=0
while [ $count -le 5 ]
do
	echo $count
	((count++))
done
