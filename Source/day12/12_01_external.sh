#!/bin/bash


count=0
input_file="input.txt"
sum=0

# ファイルの存在チェック
if [[ -f "${input_file}" ]]; then
    # ファイルに読込み権限があるか
    if [[ ! -r "${input_file}" ]]; then
	exit 4 #　ファイルあるけど、権限なし
    fi
else
	exit 5 # ファイルない
fi

while read p
do
	(( count++ ))
	(( sum+="${p}" ))
done < "${input_file}"

echo "平均: $(( $sum / $count ))"
