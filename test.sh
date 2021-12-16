#!/bin/bash
 
##Author: John Mark Isaac Madison
##Email : HeavyMetalCookies@Gmail.com
 
##Script was developed for Git Bash on Windows 10.
##It successfully queries if the dropdox folder 
##exists, and navigates to the dropbox directory.
 
echo "TEST #1:----------------------------------"
echo $PWD
wtf=$(pwd)  ##wtf="$pwd" | Version does not work.
cd ~/Dropbox/
echo $PWD
cd "$wtf"
echo "DIR:"$PWD
 
echo "TEST #2:----------------------------------"
dbox="~/Dropbox/"
eval "cd $dbox"
echo $PWD
 
echo "TEST #3:----------------------------------"
prv=$(pwd) && eval "cd $dbox" && echo "YES" && cd "$prv"
 
 
echo "TEST #4:----------------------------------"
dbox="~/Dropbox/"
result=0
prv=$(pwd) && eval "cd $dbox" && result=1 && cd "$prv"
echo $result
 
read -p "Press Enter To Continue:"
