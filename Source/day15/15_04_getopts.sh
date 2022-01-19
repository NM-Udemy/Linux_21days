#!/bin/bash


while getopts "u:a:f:" opt
do
	case "${opt}" in
		u) username=${OPTARG};;
		a) age=${OPTARG};;
		f) fullname=${OPTARG};;
	esac
done

echo "Username: ${username}"
echo "Age: ${age}"
echo "fullname: ${fullname}"

