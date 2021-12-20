#!bin/bash

#1. split array.
IN="bla@some.com;john@home.com"
arrIN=(${IN//;/ }) # // denoted to global search. #further check Paramter
       # expansion
echo ${arrIN[1]}
#IFS
#2. using IFS
#http://linuxcommand.org/lc3_man_pages/readh.html
# -A  assign the words read to sequential indices of the array
#    		variable ARRAY, starting at zero
#-R do not allow backslashes to escape any characters

echo "Now using IFS mode"
while IFS=';' read -ra ADDR; do
  for i in "${ADDR[@]}"; do
     # process "$i"
     echo $i
  done
done <<< "$IN"

