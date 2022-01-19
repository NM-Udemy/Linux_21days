#!/bin/bash


# $COMMENTがない場合
if [ -z "$COMMENT" ];
then
	COMMENT="No Comment"
fi

echo "Comment: $COMMENT"

# $USER_NAMEが存在しない場合
# idコマンドでユーザーが存在するか確認
id "$USER_NAME" &> /dev/null
# $? がne(not equal) 0の場合(0以外の場合)の処理
if [ $? -ne 0 ];
then
    echo "ユーザーが存在しません"
    exit 1
fi


# ユーザー情報（コメント）の更新
usermod -c "$COMMENT" $USER_NAME
