#!bin/bash

#   ${var#*SubStr}  # drops substring from start of string up to first occurrence of `SubStr`
#   ${var##*SubStr} # drops substring from start of string up to last occurrence of `SubStr`
#   ${var%SubStr*}  # drops substring from last occurrence of `SubStr` to end of string
#   ${var%%SubStr*} # drops substring from first occurrence of `SubStr` to end of string


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
# -R do not allow backslashes to escape any characters

# >>> meaning:  https://unix.stackexchange.com/questions/80362/what-does-mean 
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
echo "cut to cut the string"
echo "bla@some.com;john@home.com" | cut -d ";" -f 1
echo "# Using #AWK to solve the problem. "
echo "bla@some.com;john@home.com" | awk -F';' '{print $1,$2}'
echo "#USING read and IFS #####  "
IFS=';' read ADDR1 ADDR2 <<<$IN
echo $ADDR1
echo "--------------"

#array for loop to do it.
a="foo@bar;bizz@buzz;fizz@buzz;buzz@woof"
IFS=';' list=($a)
        for item in "${list[@]}"; do echo $item; 
        done
##
a="foo:bar:zoo"

##----------------------------------
#https://stackoverflow.com/a/15988793/15603477
echo"with array"
in="bla@some.com;john@home.com;Full Name <fulnam@other.org>"
oIFS="$IFS"
IFS=";"
declare -a fields=($in)
IFS="$oIFS"
unset oIFS
#
IFS=\; read -a fields <<<"$in"
set | grep ^IFS=

for x in "${fields[@]}" ;do
    echo "> [$x]"
    done
echo "with printf"
printf "> [%s]\n" "${fields[@]}"
echo "test.........."
#using mapfile to do it.
#map file: -d The first character of delim is used to terminate each input line, rather than newline.
#map file: -t Remove a trailing delim (default newline) from each line read.
echo "using map file to split string. "
in="bla@some.com;john@home.com;Full Name \ <fulnam@other.org>"
mapfile -td ; fields <<<"$in"
fields=("${fields[@]%$'\n'}")
for x in "${fields[@]}" ;do
    echo "> [$x]"
    done
