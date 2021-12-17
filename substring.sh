#!/bin/bash
#This part is about substring
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
        echo "The second way to test it's here"
else
        ehco "the second way to tell you it's not here";
fi
exit 0
