#! /bin/bash
#echo "This problem displays the winner Heads or Tails"
flip=$((RANDOM%2))
if [ $flip == 1 ]
then
	echo "Head Wins"
else
	echo "Tail Wins"
fi
