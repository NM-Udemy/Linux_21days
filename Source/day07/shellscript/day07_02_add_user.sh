#!/bin/bash

# $USER_NAME: 環境変数

# $USER_NAMEのない場合
if [ -z $USER_NAME ];
then
	echo "ユーザー名を設定してください"
	exit 1
fi

# ユーザーを追加
useradd $USER_NAME
