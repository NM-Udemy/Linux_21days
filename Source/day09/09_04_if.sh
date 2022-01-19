#!/bin/bash


name="${1}"
age="${2}"

if [ "${age}" -ge 60 ]; then
	echo "60以上"
elif [ "${age}" -gt 20 ]; then
	echo "21~59"
else
	echo "20以下"
fi

if [ "${name}" == "Taro" ]; then
	echo "あなたの名前は太郎です"
elif [ "${name}" != "Hanako" ]; then
	echo "あなたの名前はHanakoではないです"
else
	echo "あなたの名前はHanakoです"
fi

