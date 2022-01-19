#!/bin/bash


i=1
# 引数をループ
for user in ${@}
do
	echo "User - ${i}: ${user}"
	(( i++ ))
done
