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

exit 0
