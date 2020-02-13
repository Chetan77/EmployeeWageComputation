#!/bin/bash
dailyAndTotalWageWithDayOfFullTime(){
	declare -a fullTime
	declare -a day
	total=0
	present=0
	for (( i = 1; i <= 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			fullTime[$i]=160
			day[$i]=$i
		else
			fullTime[$i]=0
			day[$i]=$i
		fi
	done
	for (( i = 1; i <= 20; i++ )); do
		total=$(($total+$((fullTime[$i]))))
		echo -n "day is $((day[$i])) wage is $((fullTime[$i]))  "
		echo ""
	done
	echo ""
	#echo "total presents are $present"
	echo "total wage of a full time employee of $present days is $total"
}
dailyAndTotalWageWithDayOfPartTime(){
	declare -a partTime
	declare -a day
	total=0
	present=0
	for (( i = 1; i <= 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			partTime[$i]=160
			day[$i]=$i
		else
			partTime[$i]=0
			day[$i]=$i
		fi
	done
	for (( i = 1; i <= 20; i++ )); do
		total=$(($total+$((partTime[$i]))))
		echo -n "day is $((day[$i])) wage is $((partTime[$i]))  "
		echo ""
	done
	echo ""
	#echo "total presents are $present"
	echo "total wage of a part time employee of $present days is $total"
}
echo "select the choice 
for full time employee day, daily wage and total wage enter 1
for part time employee day, daily wage and total wage enter 2"
read choice
case $choice in
	1 )
		dailyAndTotalWageWithDayOfFullTime
		;;
	2 )
		dailyAndTotalWageWithDayOfPartTime
		;;
esac
dailyAndTotalWageWithDayOfFullTime