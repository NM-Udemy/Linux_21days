#!/bin/bash


file_path="$(realpath ${0})"
base_dir="$(dirname ${file_path})"
input_dir="${base_dir}/input"
output_dir="${base_dir}/output"

input_file="${input_dir}/input.csv"
day=$(date '+%Y%m%d')
output_file="${output_dir}/output_awk_${day}.csv"

echo "合計" > "${output_file}"

awk -F "," '
   {if($2=="売上") {sum+=$5}}
   END{print "売上: " sum}
' "${input_file}" >> "${output_file}"

awk -F "," '
   {if($2=="費用") {sum+=$5}}
   END{print "費用: " sum}
' "${input_file}" >> "${output_file}"


echo -e "\n日付ごとの合計" >> "${output_file}"
echo "日付,売上,費用" >> "${output_file}"
awk -F "," '
  {if($2=="売上"){earnings[$1]+=$5} else if($2=="費用"){costs[$1]+=$5}}
  END{for(i in costs) {print i ", " earnings[i] "," costs[i]}}
' "${input_file}" | sort -t "," -n -k 1 >> "${output_file}"


echo -e "\n品目ごとの集計" >> "${output_file}"
echo "品目,売上,費用" >> "${output_file}"

awk -F "," '
  {if($2=="売上"){earnings[$3]+=$5} else if($2=="費用"){costs[$3]+=$5}}
  END{for(i in costs) {print i ", " earnings[i] "," costs[i]}}
' "${input_file}" | sort >> "${output_file}"




