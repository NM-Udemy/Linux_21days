#!/bin/bash

names="Taro Jiro Saburo"
count=0

for name in ${names}
do
	echo "${count}"
	echo "name: ${name}"
	(( count++ ))
done

names=("Hanako" "Asuka" "Yoshiko")
for name in ${names[@]}
do
	echo "${name}"
done
