#!bin/bash
# ways to 1.loop array, print out "key" and "value"
foo=()
foo[12]="bar"
foo[42]="foo bar baz"
foo[35]="baz"

paste <(printf "%s\n" "${!foo[@]}") <(printf "%s\n" "${foo[@]}")
# paste <(cmd1) <(cmd2) will merge output of cmd1 and cmd2 line by line.
#+ printf "%s\n" "${!foo[@]}" will print all keys separated by a newline,
#+ paste <(cmd1) <(cmd2) will merge output of cmd1 and cmd2 line by line.

