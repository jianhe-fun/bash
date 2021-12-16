#!/bin/bash

echo -n "Enter a number: "
#One line is read from the standard input, or from the file descriptor fd supplied as an argument to the -u
read VAR
#INTEGER1 -gt :INTEGER2 - True if INTEGER1 is greater than INTEGER2.
if [[ $VAR -gt 10 ]]

then
  echo "The variable is greater than 10."
fi
#fi closes the if statement, while ;; closes the current entry in the case statement.
#double brackets [[]] are an alternate form of conditional expressions in
#ksh/bash/zsh with a few additional features
#https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs
