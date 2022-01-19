# 素数かチェック
# 1,2,3,5,7,11
trap "write_number_end_process" 1 2 15

function write_number_end_process(){
	echo ${number} > ${input_file}
	rm ${process_file}
	exit 0
}

function is_prime(){
	local number=${1} # チェックする値
	for i in $(seq 2 $(( number - 1 )));
	do
		if (( ${number} % ${i} == 0 )); then
			# 素数でない
			return 0
		fi
	done
	# 素数
	return 1
}

function main(){
	# stop: 処理がとまる process_idを元にkill
	# start: 処理が始まる process_idを記録
	# reset: 最初から

	base_dir=$(realpath ${0})
	base_dir=$(dirname ${base_dir})
	input_file="${base_dir}/number.txt" # チェックした数値の最大
	process_file="${base_dir}/process.txt" # プロセスID
	
	if [[ "${1}" == "reset" ]];then
		rm "${input_file}" # 初めに戻る
		exit 0
	fi
	if [[ "${1}" == "stop" ]];then
		if [[ -f "${process_file}" ]];then
			process_id=$(cat ${process_file})
			kill -15 ${process_id}
		else
			echo "プロセスは動いていません"
		fi
		exit 0
	fi
	if [[ "${1}" == "start" && -f "${process_file}" ]];then
		echo "プロセスは既に動いています"
		exit 0
	fi

	if [[ -f "${input_file}" ]]; then
		number=$(cat "${input_file}")
		(( number++ ))
	else
		number=1
	fi

	echo $$ > "${process_file}"
	while true;
	do
		is_prime ${number} # 素数か
		if (( ${?} == 1 ));then
			echo ${number}
			sleep 1
		fi
		(( number++ ))
	done
}

main "${@}"
