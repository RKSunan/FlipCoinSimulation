#! /bin/bash
#echo "This problem displays the winner Heads or Tails"
head=0
tail=0
n=0
if [ $head == $tail ]
then
while [ $n -lt 2 ]
do
for i in $(seq 1 100)
do
flip=$((RANDOM%2))

if [ $flip == 1 ]
then
#       echo "Head Wins"
        ((head++))
else
#       echo "Tail Wins"
        ((tail++))

fi
  	 if [ $head -gt $tail ]
        then
        n=$(($head - $tail))
        elif [ $tail -gt $head ]
  	then
      	n=$(($tail - $head))

fi
done
done
echo "Head wins $head times"
echo "Tail wins $tail times"
echo "Head and  tail win difference is $n"
fi

