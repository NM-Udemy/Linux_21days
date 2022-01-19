#!/bin/bash

read -p "年齢を変更したいユーザーを入力してください: " name

read -p "変更する年齢を入力してください: " age

sqlite3 my_database.db "UPDATE USER SET AGE=${age} WHERE NAME=\"${name}\""

