#!/bin/bash

echo "1 + 3" # 計算されない

# 和
echo "$(expr 2 + 3)"
echo "$(( 2 + 3 ))" # 推奨

# 変数に格納
result="$(( 4 * 5 ))"
echo "${result}"

# 差
echo "$(expr 1 - 3)"
echo "$(( 2 - 5 ))"

# 積
echo "$(expr 3 \* 4)"
echo "$(( 3 * 4 ))"

# 商
echo "$(expr 12 / 2)"
echo "$(( 9 / 4 ))" # 切り捨て2

# 余り
echo "$(expr 12 % 2)"
echo "$(( 12 % 5 ))"




