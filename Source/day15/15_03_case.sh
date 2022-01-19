#!/bin/bash

# case文
case "${word}" in
	#　hello
	"hello" )
	echo "konnnitiwa"
	;;
	"bye" )
	echo "Sayounara"
	;;
	# その他の処理
	*)
	echo "その他のwordです"
esac


