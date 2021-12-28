#!/bin/bash
#This part is about substring
#https://stackoverflow.com/questions/229551/how-to-check-if-a-string-contains-a-substring-in-bash
echo "first way to do it"
String='my long string';
#1.
if [[ $String =~ "my" ]];
        then echo "it's here";
else
        echo "it's not here";
fi
#2
echo "The second way to do it"
re='my l';
if [[ $String =~ $re ]]; then 
        echo "#2 it's here"
else
        ehco "#2 it's not here";
fi
#similar you can also check substring not exists in main string.

echo "#3......"

if [[ ! $String =~ $re ]]; then 
        echo "#3 vsubstring not exists in main string."
else
        echo "#3 substring exists in main string.";
fi
#similar you can also check substring not exists in main string.

echo "#4.........."
#case "$string" in 
#esac
echo "#5.........."
if  grep -q 'my' <<<"$String"; then
        echo "it's there";
else echo "It's not here";
fi
echo "#6..... ."


if file -b "$1" | grep -q "Bourne-Again shell script, ASCII text executable" ;
then echo "yes"; else echo "no";
fi

exit 0

echo "-------------------------"
echo "more generic way to get the substring."
# cut 2 refer to the second field after using delimiter.
echo 'someletters_12345_moreleters.ext' | cut -d'_' -f 2

input='some_of_your_navie_thought'
# It's 1-based indices.
substring=$(echo $input | cut -d'_' -f 2)
echo ${substring}



