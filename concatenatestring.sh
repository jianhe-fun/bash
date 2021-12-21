#!bin/bash
#DECLARE
#The -p option will display the attributes and values of each name.
#To explicitly declare an array:   declare -a name
declare -a a='([0]="36" [1]="18" [2]="one" [3]="word" [4]="hello world!" [5]="h
ello world!" [6]="hello world!")'
echo ${a[@]}

