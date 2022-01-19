#!/bin/bash


trap "remove_files" 1 2 15

remove_files(){
	# ユーザーがいるディレクトリのtmp_で始まるファイルを削除
	rm ./tmp_*
	exit
}


for i in {0..100}
do
	echo "${i}" > tmp_${i}.log
	sleep 1
done
