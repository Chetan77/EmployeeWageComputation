#!/bin/bash
function FullTimeEmployeeWage(){
	days=$1
	dailyWage=160
	monthlyWage=$(($days * $dailyWage))
	echo "monthlyWage for $days days is $monthlyWage"
	return $wage
}

function PartTimeEmployeeWage(){
	days=$1
	dailyWage=80
	monthlyWage=$(($days * $dailyWage))
	echo "monthlyWage $days days is $monthlyWage"
}
echo "select the choice
for full time monthly wage enter 1
for part time monthly wage enter 2"
read choice
case $choice in
	1 )
		days=$((RANDOM % 20))
		FullTimeEmployeeWage $days
		;;
	2 )
		days=$((RANDOM % 20))
		PartTimeEmployeeWage $days
		;;
	* )	
	echo "enter a correct choice"	
esac