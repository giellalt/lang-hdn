#!/bin/bash

filename='../affixes/verbs.lexc'
# echo $filename
lexicon=""
suffix=""

for combo in $(cat alltagcombos.txt) ; do
	echo
	echo $combo
#	grep "$combo"
	while read p; do 
#		echo "$p - $combo"
		if [[ $p == LEXICON* ]]; then
			lexicon=$(echo $p | cut -d' ' -f2)
#			echo "$lexicon"
		fi
		if [[ $p == *${combo}:* ]]; then
			suffix=$(echo $p | cut -d':' -f2 | cut -d' ' -f1 | tr -d '%>' )
			printf "$suffix - "
			echo "$lexicon"
		fi
	done < $filename
done