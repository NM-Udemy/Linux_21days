#!/bin/bash


script_path=$(realpath ${0})
script_dir=$(dirname ${script_path})

file_name="tmp_$(date '+%Y%m%d%H%M%S')"
file_path="${script_dir}/${file_name}"

echo "file実行" > "${file_path}"
date >> "${file_path}"
awk "BEGIN {for(i=0;i<=100;i++) print i}" >> "${file_path}"

