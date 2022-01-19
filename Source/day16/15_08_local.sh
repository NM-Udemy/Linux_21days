#!/bin/bash


my_function(){
	echo ${name}
  	local name="Jiro"
	name="Saburo"
	echo ${name}
	local age=18
}

main(){
	echo "第一引数は${1}です"
	name="Taro"

	my_function
	echo "関数実行後: ${name}"
	echo "年齢: ${age}"

}
# 全引数と実行する
main "${@}"




