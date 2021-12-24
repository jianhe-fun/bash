
#!bin/bash
#nested parameter expansion/
#https://stackoverflow.com/questions/917260/can-var-parameter-expansion-expressions-be-nested-in-bash/61364880#61364880
foobar="baz"
bar="foo"
declare -n reffoobar=${bar}bar
echo $reffoobar #It will return: baz

#If the first character of parameter is an exclamation point (!), and parameter is not a nameref,
#+ it introduces a level of indirection.
#+ Bash uses the value formed by expanding the rest of parameter as the new parameter;
#+ this is then expanded and that value is used in the rest of the expansion,
#+  rather than the expansion of the original parameter.
#+ This is known as indirect expansion.
#+ The value is subject to tilde expansion, parameter expansion, command substitution, and arithmetic expansion
echo "Another way to do nested parameter expansion."
foobar="baz"
varname="foo"
varname+="bar"
echo ${!varname}

