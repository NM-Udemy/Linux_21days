#!/bin/bash

counter=1
# 条件を満たすまでループ
until (( "${counter}" > 10 ))
do
	echo "counter: ${counter}"
	(( counter++ ))
	if (( "${counter}" == 5 ));then
		break
	fi
done

name=""
until [[ "${name}" == "Taro" ]]
do
	read -p "name を入力: " name
	echo "name: ${name}"
done

