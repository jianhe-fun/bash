#!bin/bash
#read files line by line with SHELL, XARGS, WHILE READ, WHILE READ -U

# ways to run command line by line. 
#  Command Substitution
#+ Command substitution allows the output of a command to replace the command itself. 
#+ $(command)
#+ the command substitution $(cat file) can be replaced by
#+ the equivalent but faster $(< file).
#----------------
#-0 : input items are terminated by null character instead of white spaces
chmod 755  $(<file.txt)

#using xargs to do it.
xargs -0 chmod 755 < <(tr \\n \\0 <file.txt)

#or another way to do the transformation
xargs -0 chmod 755 < <(tr \\n \\0 <file.txt)

