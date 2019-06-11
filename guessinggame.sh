#!/usr/bin/env bash
# File: guessinggame.sh

correct=$(ls |wc -l)

function judge {
  if [[ $input -eq $correct ]]
  then
  	echo "Congratulations ,the answer is $input"
  else
  	if [[ $input -gt $correct ]]
  	then
  		echo "Sorry,the answer is too high"
  	else
  		echo "Sorry,the answer is too low"
  	fi
  fi
}

while [[ $correct -ne $input ]]
do
	echo "guess how many files are in the current directory"
	read input
	judge $input
done




