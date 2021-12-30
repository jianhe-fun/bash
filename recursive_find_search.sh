#!bin/bash
#https://stackoverflow.com/questions/1583219/how-can-i-do-a-recursive-find-replace-of-a-string-with-awk-or-sed?answertab=active#tab-top

find /home/jian/bash/bash \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/subdomainA\.example\.com/subdomainB.example.com/g'

# -type decide the file type. 
#    -f   regular file
#    -d   directory
#    -print0 True; print the full file name on the standard output,
#              followed by a null character 

#  -0 Input items are terminated by a null character instead of
#              by whitespace, and the quotes and backslash are not
#              special
#--------------------------------------------------
# -name
#  Base of file name (the path with the leading directories
#              removed) matches shell pattern pattern.  Because the
#              leading directories are removed, the file names considered
#              for a match with -name will never include a slash, so
#+              `-name a/b' will never match anything
#//////////////////////////////////////////////////////
#  -prune True; if the file is a directory, do not descend into it.
#              If -depth is given, then -prune has no effect.  Because
#              -delete implies -depth, you cannot usefully use -prune and
#              -delete together.  

#The -i flag in BSD sed requires a file extension to be given to make backups
# for all modified files. Specifying the empty string prevents file backups from
#        being made.i


#anorther way using. rg.
rg "[.]example[.]" --files-with-matches | xargs sed -i 's/subdomainB\.example\.com/subdomainC.example.com/g'

