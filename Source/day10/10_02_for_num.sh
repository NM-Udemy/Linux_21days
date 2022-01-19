#!/bin/bash

for number in {20..1..2}
do
	echo "${number}"
done

num=10

for number in $( seq 20 -3 ${num} )
do
	echo "seq: ${number}"
done
