#!bin/bash
#https://stackoverflow.com/questions/14110223/how-to-read-file-from-line-x-to-the-end-of-a-file-in-bash/14110529#14110529

i=1
while read a
 do
   test $i -eq 1 && ((i=i+1)) && continue
   echo -e "$a\n"
done < '/mnt/c/Users/JIAN HE/Desktop/test.csv'
