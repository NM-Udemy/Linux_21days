#!/bin/bash

# ファイル、ディレクトリが存在する
if [[ -e "file" ]];then
	echo "file存在"
fi

# -f: ファイルが存在
if [[ -f "test" ]];then
	echo "testファイル存在する"
fi

# -d: ディレクトリが存在
if [[ -d "test" ]]; then
	echo "testディレクトリが存在"
fi


# -w: 書き込み権限
if [[ -w "wfile" ]];then
	echo "書き込み権限あり"
fi

# -x: 実行権限
if [[ -x "xfile" ]]; then
	echo "実行権限あり"
fi

# -nt: 新しい、-ot: 古い
if [[ "file1" -ot "file2" ]]; then
	echo "file1がfile2より古い"
fi

