#!/bin/bash



path=$(realpath ${0})
basedir=$(dirname ${path})

# 関数が定義
source $basedir/libraries/calcuration.sh

#合計値の計算
calcuration::sum "${@}"

# 平均値の計算
calcuration::avg "${@}"



