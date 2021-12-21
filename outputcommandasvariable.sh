#bin/bash
#https://stackoverflow.com/questions/4651437/how-do-i-set-a-variable-to-the-output-of-a-command-in-bash/41236640?noredirect=1#comment124486635_41236640
WTF=`echo "what's up"`
echo "proper way of setting up an variable"
#The following way will fail.
WTF= `echo "stuff"`
echo "Example: $WTFF"
###############
output="$( bash <<EOF
echo first
echo second
echo third
EOF
)"
echo "$output"
#
echo "using eval to evaulation "
var="ls -l"
eval $var
#----
echo "using function to do evaulation"
var1=$(expr 2 + 3)
echo "$var1"
