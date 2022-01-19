#!/bin/bash

# 変数の存在チェック
if [ -z "$SETTING_DATE" ];
then
	exit 1
fi

if [ -z "$FILE_NAME" ];
then
	exit 1
fi

# 日付を何日前、何日後かで設定
FILE_DATE=`date -d "$SETTING_DATE" "+%Y/%m/%d %H:%M:%S"`

# ファイルを作成
touch -d "$FILE_DATE" $FILE_NAME

