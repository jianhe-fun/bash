#!bin/bash
#https://stackoverflow.com/questions/14110223/how-to-read-file-from-line-x-to-the-end-of-a-file-in-bash/14110529#14110529

#skip line1 to read line by line. 
echo "\n will make the cursor to next line."
i=1
while read a
 do
   test $i -eq 1 && ((i=i+1)) && continue
   echo -e "$a\n"
done < '/mnt/c/Users/JIAN HE/Desktop/test.csv'

echo "bash way to do it"

lineToSkip=1
{
        for ((s=$lineToSkip;s--;)); do
                read
        done
        while read line; do
                echo -e "$line"
        done
} < '/mnt/c/Users/JIAN HE/Desktop/test.csv'
echo "----------"
echo "simple way using read to skip line1"
{
        read; while read line; do echo $line; done
} < '/mnt/c/Users/JIAN HE/Desktop/test.csv'
