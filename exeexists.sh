#!/bin/bash
#https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
#https://stackoverflow.com/questions/818255/in-the-shell-what-does-21-mean
if ! type "$1" > /dev/null 2>&1; then
  echo "install $1 here";
else echo " $1 exists";
fi
