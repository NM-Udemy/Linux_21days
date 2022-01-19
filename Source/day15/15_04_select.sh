#!/bin/bash


# REPLAY: 何番目を選んだか
select brand in Samusung Iphone Xperia Huaway EXIT
do
	echo "あなたが選んだのは${REPLY}番目の${brand}です"
	case "${brand}" in
		"Samusung" )
			echo "10000円です"
			;;
		"Iphone" )
			echo "30000円です"
			;;
		*)
			echo "値段はわかりません"
			;;
	esac
	if [[ ${REPLY} -eq 5 ]];
	then
		break
	fi
done

echo "処理を終了しました"
