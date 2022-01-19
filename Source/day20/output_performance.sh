#!/bin/bash


time_stamp=$(date "+%Y/%m/%d %H:%M:%S")
day=$(date "+%Y%m%d")

cpu_log_file="/tmp/cpu_${day}.log"
memory_log_file="/tmp/memory_${day}.log"
disk_log_file="/tmp/disk_${day}.log"

# vmstatの行数
line_no=$(vmstat | wc -l)
# vmstat: cpu, memoryに格納
vmstat |tail -n $(( line_no - 2 )) | while read line
do
	# memory
	memory=$(echo ${line} | cut -d " " -f "3,4,5,6" | sed -e "s/ /,/g")
	# cpu
	cpu=$(echo ${line}| cut -d " " -f "13,14,15,16,17"| sed -e "s/ /,/g")
	echo "${time_stamp},${cpu}" >> "${cpu_log_file}"
	echo "${time_stamp},${memory}" >> "${memory_log_file}"
done

line_no=$( iostat -xd | wc -l )
iostat -xd | tail -n $((line_no - 3)) | head -n $((line_no - 4)) | while read line
do
	disk_busy=$(echo ${line} | cut -d " " -f "1,14" | sed -e "s/ /,/g")
	echo "${time_stamp},${disk_busy}" >> "${disk_log_file}"
done









