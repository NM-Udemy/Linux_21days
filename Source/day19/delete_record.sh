#!/bin/bash

read -p "削除したいユーザーを入力して下さい: " name

sqlite3 my_database.db "DELETE FROM USER WHERE NAME=\"${name}\""

