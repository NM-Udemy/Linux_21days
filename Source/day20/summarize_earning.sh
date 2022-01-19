#!/bin/bash


function calcurate_sum(){
	local summary_month=${1}
	sqlite3 day20.db "SELECT NAME, EARNING FROM PRODUCT_EARNING WHERE DATE LIKE \"${summary_month}%\"" | awk -F "|" '
		{earnings[$1]+=$2}
		END{for (name in earnings){print name ": " earnings[name] }}
	' | sort
}

function calcurate_avg(){
	local summary_month=${1}
	sqlite3 day20.db "SELECT NAME, EARNING, DATE FROM PRODUCT_EARNING WHERE DATE LIKE \"${summary_month}%\"" | awk -F "|" '
		{earnings[$1]+=$2; DATES[$3]=0}
		END{for (name in earnings){print name ": " (earnings[name] / length(DATES)) }}
	' | sort
}

read -p "集計したい年月を入力してください(yyyy/mm): " summary_month

select option in SUM AVG
do
	echo "${option}: を表示します"
	break
done


case "${option}" in
	"SUM") #合計値
		# SQL+awk
		calcurate_sum ${summary_month}
		# SQL ☆
		sqlite3 day20.db "SELECT NAME, SUM(EARNING) FROM PRODUCT_EARNING WHERE DATE LIKE \"${summary_month}%\" GROUP BY NAME"
		;;
	"AVG")
		calcurate_avg ${summary_month}
		sqlite3 day20.db "SELECT NAME, AVG(EARNING) FROM PRODUCT_EARNING WHERE DATE LIKE \"${summary_month}%\" GROUP BY NAME"
		;;
esac



