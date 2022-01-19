#!/bin/bash


name="${1}"
age="${2}"

# if test "${name}" == "Taro" && test "${age}" -gt 20; then
# if [ "${name}" == "Taro" ] && [ "${age}" -gt 20 ]; then
# if [ "${name}" == "Taro" -a "${age}" -gt 20 ]; then
# if [[ "${name}" == "Taro" && "${age}" -gt 20 ]]; then
if [[ "${name}" == "Taro" && "${age}" -gt 20 ]]; then
	echo "nameがTaroかつ20よりおおきい"
fi

year=$( date "+%Y" )
# 2021
year=2000
# 400で割り切れるか、4で割り切れて100で割り切れない
if (( "${year}" % 400 == 0 || "${year}" % 4 == 0 && "${year}" % 100 != 0 ));then
	echo "うるう年です"
else
	echo "うるう年でないです"
fi

