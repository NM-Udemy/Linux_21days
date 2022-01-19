#!/bin/bash


declare -A salaries

salaries['Taro']=10000000
salaries['Hanako']=15000000
salaries['Yoshiko']=12500000

# echo ${salaries['Taro']}

for i in "${!salaries[@]}"
do
	echo "${i}: ${salaries[${i}]}"
done
