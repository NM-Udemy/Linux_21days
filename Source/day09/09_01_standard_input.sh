#!/bin/bash

# 標準入力
read name

echo "${name}"

# 文字と一緒
read -p "メッセージを入力してください: " message

echo "${message}"

# 文字を画面に表示させない
read -sp "パスワードを入力してください: " password

echo "${password}"

# 配列
read -a sports
echo "${sports[@]}"




