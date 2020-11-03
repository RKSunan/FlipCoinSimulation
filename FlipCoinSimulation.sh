#! /bin/bash
#echo "This problem displays the winner Heads or Tails"
head=0
tail=0
for i in $(seq 1 100)
do
flip=$((RANDOM%2))
if [[ $head -lt 21 && $tail -lt 21 ]]
then
if [ $flip == 1 ]
then
#	echo "Head Wins"
	((head++))
else
#	echo "Tail Wins"
	((tail++))

fi
fi
done
echo "Head has won $head times"
echo "Tail has won $tail times"
if [ $head == $tail ]
then
	echo "There is a tie"
elif [ $head -gt $tail ]
then
	n=$(($head - $tail))  
	echo "Head wins $n more"
else
	n=$(($tail - $head))
	echo "Tail wins $n more"
fi
