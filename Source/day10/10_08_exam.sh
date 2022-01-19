#!/bin/bash


# 数字をあてるゲーム

random_value=$(( ${RANDOM} % 101 )) # 0-100

answer=-1 # 0-100でない数字
counter=0 # 試行回数

# while (( "${answer}" != "${random_value}" ))
until (( "${answer}" == "${random_value}" ))
do
	read -p "答えと思う数字を入力してください: " answer
	(( counter++ ))
	if (( "${answer}" < "${random_value}" ));then
		echo "もう少し大きい値です"
	elif (( "${answer}" > "${random_value}" ));then
		echo "もう少し小さい値です"
	elif (( "${answer}" == "${random_value}" ));then
		echo "正解は${random_value}です。${counter}回で正解を当てました！！"
	fi
done
