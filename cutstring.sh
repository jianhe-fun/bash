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

#split string based on delimiter in bash.
echo "split string based on delimiter" 
IN="bla@some.com;john@home.com;Full Name <fulnam@other.org>"
oIFS="$IFS"
IFS=";"
declare -a fields=($IN)
IFS="$oIFS"
unset oIFS
echo $oIFS
#shell way.
IN="bla@some.com;john@home.com;Full Name <fulnam@other.org>"

# ${var%%SubStr*} drops substring from first occurrence of `SubStr` to end of string
#  ## and %% delete the longest possible matching substring.
#   # and % delete the shortest possible matching substring from the start and end of the string respectively
while [ "$IN" != "$iter" ] ;do
    # extract the substring from start of string up to delimiter.
    iter=${IN%%;*}
    # delete this first "element" AND next separator, from $IN.
    IN="${IN#$iter;}"
    # Print (or doing anything with) the first "element".
    echo "> [$iter]"
done
#-------------------


