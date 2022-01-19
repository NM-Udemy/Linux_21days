#!/bin/bash


color="${1}"

echo "${color}"

# test
if test "${color}" == "Blue" || test "${color}" == "Red"; then
	echo "COLORはBlue or  Redです"
fi
# []
# if [ "${color}" == "Blue" ] || [ "${color}" == "Gray" ]; then
if [ "${color}" == "Blue" -o "${color}" == "Gray" ]; then
	echo "ColorはBlue or Grayです"
fi

# [[]]
if [[ "${color}" == "Blue" || "${color}" == "Yellow" ]]; then
	echo "ColorはBlue or Yellowです"
fi

year=$(date "+%Y")
# 2021

if (( "${year}" > 2000 || "${year}" <= 2100 ));then
	echo "21世紀です"
fi



