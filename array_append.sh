#!bin/bash

#https://stackoverflow.com/questions/1951506/add-a-new-element-to-an-array-without-specifying-the-index-in-bash
array=(a b c d e f g h)
array[42]="i"
unset array[2]
unset array[3]
declare -p array

echo ${#array[@]}
echo ${array[${#array[@]}]}
echo "---------"
echo "get the last index"
end=(${!array[@]})
echo $end
end=${end[@]: -1}
echo $end
echo ${array[@]: -1}

