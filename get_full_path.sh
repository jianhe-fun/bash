#!bin/bash
#https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "script full path:  ${SCRIPTPATH}"

#another simple way to settle it.
script=`realpath $0`
fullpath=`dirname $script`
echo "full path: ${fullpath}"
