#!/bin/bash


# 引数を足す
function sum(){
	retval=0
	for num in "${@}"
	do
		(( retval+="${num}" ))
	done
#	echo "${retval}"
	return ${retval}
}

sum 1 2 3 4

value=${?} # sum 1 2 3 4 のreturnの値を取得
echo "返り値は、${value}です"
