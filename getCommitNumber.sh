result=''
result=`git log | grep  -v -i  date: |grep -v -i Author: | grep -v -i 'commit:*' | grep -v -i 'Merge:'`
echo `$result | awk -F`
