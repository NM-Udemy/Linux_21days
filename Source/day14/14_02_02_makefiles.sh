#!/bin/bash

file_path="$(realpath ${0})"
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"

output_file="${output_dir}/tmpfile_"

#for i in {60..0}
#do
#	day=$(date -d "${i} days ago" "+%Y%m%d")
#	touch -d "${day}" "${output_file}${day}.txt"
#done

awk 'BEGIN{for(i=60;i>=0;i--) print i}' | xargs -I @ date -d "@ days ago" "+%Y%m%d" | xargs -I @ touch -d "@" "${output_file}@.txt"
