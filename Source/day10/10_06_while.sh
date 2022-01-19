#!/bin/bash

counter=1
# 条件を満たす限り処理をする
while (( "${counter}" <= 10 ))
do
	(( counter++ ))
	if (( "${counter}" == 5 ));then
		continue
		# break
	fi
	echo "counter: ${counter}"
done

char=""
while [[ ! "${char}" == "Exit" ]]
do
	read -p "nameを入力して下さい(Exitで終了): " name
	if [[ "${name}" == "Exit" ]];then
		char="Exit"
		continue
	fi
	echo "name: $name"
done
