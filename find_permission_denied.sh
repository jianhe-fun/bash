#!bin/bash
# https://stackoverflow.com/questions/762348/how-can-i-exclude-all-permission-denied-messages-from-find
#  find 
#  expr1 -o expr2  Or; expr2 is not evaluated if expr1 is true.
# True; if the file is a directory, do not descend into it.
#readable:  Matches files which are readable by the current user.
#+              This takes into account access control lists and other
#+              permissions artefacts which the -perm test ignores.

# print True; print the full file name on the standard output,
#              followed by a newline.
find "/home/jian/bash/bash" ! -readable -prune -o -name  h1.txt -print
