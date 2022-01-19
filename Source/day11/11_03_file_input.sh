#!/bin/bash


file=$(cat file.txt)

#echo "$file"

var="Before"
# while <
while read p
do
	if [[ "${p}" == "Osaka" ]];then
		continue
	fi
	var="After"
	echo "${p}" # fileの1行1行を取り出す
done < file.txt

echo "var: ${var}"

var2="Before"

cat file.txt | while read p
do
	var2="After"
	echo "${p}"
done
echo "var2: ${var2}"




