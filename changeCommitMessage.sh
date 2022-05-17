#! /bin/bash/ -x


read -p "Enter the commit message " msg
msg=$msg | sed 's/ //g'
#result=`git log |grep -vi 'commit ' | grep -vi 'Date:'| grep -vi 'Author:'| grep -iv 'Merge:' | awk -v var="$msg" 'BEGIN{RS=""} { print $0; }'`
#result=`git log |grep -vi 'commit ' | grep -vi 'Date:'| grep -vi 'Author:'| grep -iv 'Merge:' | awk -F, '/,/{gsub(/ /,""); print $0 }'|awk -v var="$msg" 'BEGIN{RS=""} { if( $0 == "    $var" ) print NR; }'`
n=`git log |grep -vi 'commit ' | grep -vi 'Date:'| grep -vi 'Author:'| grep -iv 'Merge:' | sed 's/ //g' | awk -v var="$msg" 'BEGIN{RS=""} { if( $0 == var ) print NR; }'`
git rebase -i HEAD~$n
