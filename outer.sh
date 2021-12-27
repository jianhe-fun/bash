#!bin/bash
# https://stackoverflow.com/questions/1994928/bash-calling-a-scripts-with-double-quote-argument/1995151#1995151\

#key gotta 
#1. printf by default does not add a trailing newline by default.
#2 echo does add a triling newline by default.
./inner.sh "$@"
