#!/bin/bash

# 合計を計算
function calcuration::sum(){
	local retval=0
	for val in "${@}"
	do
		(( retval += "${val}" ))
	done
	echo "合計値: ${retval}"
}

# 平均値を計算
function calcuration::avg(){
	local retval=0
	local count=0
	for val in "${@}"
	do
		(( retval += "${val}" ))
		(( count++ ))
	done
	retval=$(( ${retval} / ${count} ))
	echo "平均値: ${retval}"
}
