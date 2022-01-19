#!/bin/bash

file_path="$(realpath ${0})"
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"

file_count="$(ls ${output_dir}/tmpfile* | wc -l)"
remove_count="$(( ${file_count} - 50 ))"

#echo "${file_count}"
#echo "${remove_count}"

ls -t -1 "${output_dir}" | tail -n "${remove_count}" | while read file_name
do
#	echo ${file_name}
	rm "${output_dir}/${file_name}"
done
