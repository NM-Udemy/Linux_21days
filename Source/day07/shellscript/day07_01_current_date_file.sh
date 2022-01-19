#!/bin/bash

current_date=`date '+%Y%m%d'`
echo $current_date

# $FILE_NAME+current_date.txt
touch ${FILE_NAME}_${current_date}.txt

# $FILE_NAME_$current_date
