#!/bin/bash

# 2 割込み SIGINT
trap "echo 'ctrl+c 実行'" 2

# 15 kill停止 SIGTERM
trap "echo '停止しました' > tmp.log" 15

# 1 SIGHUP: 端末切断
trap "echo '端末が切断されました' > sigup.log" SIGHUP

sleep 100
