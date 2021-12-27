#bin/bash
#https://stackoverflow.com/questions/35274597/store-mysql-result-in-a-bash-array-variable/35276157#35276157
DBNAME=postgres
role=jian
mapfile result < <(psql -U jian -d ${DBNAME} -c  "SELECT name, salary from emp
limit 3 ;")

echo "${result[0]}"
echo "$result"
echo "${result[-1]}"
# another way to do it.
echo "using IFS and the whole as array."
i=0
while IFS=$'|' read name[i] salary[i++];do
    :;done  < <(psql -U jian -d ${DBNAME} -c  "SELECT name, salary from emp
limit 3;" 
)
name=("${name[@]}")
salary=("${salary[@]}")
#echo ${name[0]} ${salary[0]}
#echo ${name[1]} ${salary[1]}
#echo ${name[2]} ${salary[2]}
#echo ${name[3]} ${salary[3]}
#echo ${name[4]} ${salary[4]}
#echo ${name[5]} ${salary[5]}
#echo ${name[6]} ${salary[6]}
echo "number of name array: " ${#name[@]}
echo "number of salary array: " ${#salary[@]}
echo "-------begin unset"
unset name[1]
unset salary[1]
unset name[-1]
unset salary[-1]
unset name[-2]
unset salary[-2]
echo "after unset------------"
echo "-----"
echo "number of name array: " ${#name[@]}
echo "number of salary array: " ${#salary[@]}
echo "get the begining and end of the array."
echo arrary name last element:  ${name[4]} Larray salary last element:${salary[4]}
echo arrary name first element:  ${name[0]} Larray salary first element:${salary[0]}

