#!/bin/bash

input_file="${1}"

while IFS=, read -r id name age country
do
    sqlite3 my_database.db "INSERT INTO USER VALUES(${id}, \"${name}\", ${age}, \"${country}\")"
done < "${input_file}"
