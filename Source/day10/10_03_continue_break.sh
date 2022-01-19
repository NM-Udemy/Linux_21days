#!/bin/bash


for num in {0..10}
do
	if (( $num >= 3 && $num <=6 ));then
#		continue
		break
	fi
	echo "num: ${num}"
done
