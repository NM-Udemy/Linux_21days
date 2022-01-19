#!/bin/bash

# 0 ~ 100
# 15で割り切れたらFB
# 15で割り切れないが、3で割り切れるF
# 15で割り切れないが、5で割り切れるB

for i in {0..100}
do
	if (( i % 15 == 0 ));then
		echo "${i}: FB"
		continue
	elif (( i % 3 == 0 ));then
		echo "${i}: F"
		continue
	elif (( i % 5 == 0 ));then
		echo "${i}: B"
		continue
	fi
done
