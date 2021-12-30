#!bin/bash
# READ DEFAULT: Read a line from the standard input and split it into fields.
# read -r:  do not allow backslashes to escape any characters

while IFS= read -r -u3 line; do
        echo "Text read from file: $line"
done 3< "$1"
