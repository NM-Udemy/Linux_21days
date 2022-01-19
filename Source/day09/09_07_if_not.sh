#!/bin/bash

day=$(date '+%d')
# echo $day # 23


if ! test "${day}" -eq 23;then
	echo "dayが1ではないです"
fi

if [ ! "${day}" -eq 21 ];then
	echo "[]のif文の中の処理実行"
fi

if [[ ! "${day}" -eq 21 ]];then
        echo "[[]]のif文の中の処理実行"
fi

# $# 引数の数
if ! (( "${#}" == 0 )); then
	echo "引数が存在します"
fi
