#!/bin/bash


# sqlite3 my_database.db "INSERT INTO USER VALUES(1, 'Taro', 15, 'Japan')"

COUNTRIES=("Japan" "Korea" "China" "Ingrand" "USA")

# nameがquitでないかぎりloop
while [[ "${name}" != "quit" ]];
do
    read -p "名前を入力してください(quitで終了): " name
    # 変数に値が格納されてないばあい
    if [[ -z "${name}" ]];then
	echo "正しい名前を入力してください"
	continue
    elif [[ "${name}" == "quit" ]]; then
	break
    fi

    # RANDOM: ランダム値を取り出す環境変数
    age=$(( ${RANDOM} % 100 )) # 0 - 99
    country="${COUNTRIES[$(( ${RANDOM} % 5))]}" # Japan...USA

    id=$(sqlite3 my_database.db "SELECT ID FROM USER ORDER BY ID DESC LIMIT 1")
    (( id++ ))
    sqlite3 my_database.db "INSERT INTO USER(ID, NAME, AGE, COUNTRY) VALUES(${id}, \"${name}\", ${age}, \"${country}\")"
    if (( $? == 0 ));then
	echo "データを挿入しました。　id: ${id}, name: ${name}, age: ${age}, country: ${country}"
    fi
done
