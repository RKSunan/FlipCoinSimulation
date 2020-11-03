#! /bin/bash
#echo "This problem displays the winner Heads or Tails"
head=0
tail=0
for i in $(seq 1 100)
do
flip=$((RANDOM%2))
if [ $flip == 1 ]
then
#	echo "Head Wins"
	((head++))
else
#	echo "Tail Wins"
	((tail++))
fi
done
echo "Head has won $head times"
echo "Tail has won $tail times"
