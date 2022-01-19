#!/bin/bash


# 実行ファイルのパス
file_path="$(realpath ${0})"
base_dir="$(dirname ${file_path})"

input_dir="${base_dir}/input"
output_dir="${base_dir}/output"

input_file="${input_dir}/input.csv"


# 合計の売り上げ、費用
total_cost=0
total_earning=0

# 日付ごとの売り上げ、費用
declare -A daily_costs
declare -A daily_earnings

# 品目ごと
declare -A product_costs
declare -A product_earnings

# 売上、費用の合計を計算
while read p
do
	day=$(echo "${p}" | cut -d "," -f 1)
	cost_or_earning=$(echo "${p}" | cut -d "," -f 2)
	product_name=$(echo "${p}" | cut -d "," -f 3)
	price=$(echo "${p}" | cut -d "," -f 5)

	if [[ "${cost_or_earning}" == "費用" ]];then
		(( daily_costs["${day}"]+="${price}" ))
		(( product_costs["${product_name}"]+="${price}" ))
		(( total_cost+="${price}" ))
	elif [[ "${cost_or_earning}" == "売上" ]];then
		(( daily_earnings["${day}"]+="${price}" ))
		(( product_earnings["${product_name}"]+="${price}" ))
		(( total_earning += "${price}" ))
	fi

    # 19000101,売上,商品A,786,393000
done < "${input_file}"

day=$(date '+%Y%m%d')

output_file="${output_dir}/output_${day}.csv"

echo "合計" > "${output_file}"

echo "売上: ${total_earning}" >> "${output_file}"
echo "費用: ${total_cost}" >> "${output_file}"

echo -e "\n日付ごとの合計" >> "${output_file}"
echo "日付,売上,費用" >> "${output_file}"

echo "${!daily_costs[@]}" | sed 's/ /\n/g' | sort -n | while read key
do
	echo "${key},${daily_earnings[${key}]},${daily_costs[$key]}" >> "${output_file}"
done


echo -e "\n品目ごとの集計" >> "${output_file}"
echo "品目,売上,費用" >> "${output_file}"


echo "${!product_costs[@]} ${!product_earnings[@]}" | sed 's/ /\n/g' | sort | uniq | while read key
do
	echo "${key},${product_earnings[${key}]},${product_costs[${key}]}" >> "${output_file}"
done


