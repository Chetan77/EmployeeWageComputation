#!/bin/bash
WagesOnAConditionForFullTime(){
	hoursperDay=8
	workingdays=20
	maxWorkingHoursPM=100
	workedHours=0
	days=0
	hours=0
	while (( (($workedHours < 100 )) && (($days < $workingdays)) )); do
		present=$(($RANDOM%2))
		echo $present
		if (( $present == 1 )); then
			workedHours=$(($workedHours+8))
			if [[  $workedHours -le $maxWorkingHoursPM ]]; then
				hours=$(($hours+8))
			fi
			echo $workedHours
		fi
		days=$(($days+1))
	done
	monthlyWage=$(($hours*20))
	echo "monthly wage for $hours hours is $monthlyWage"
}
WagesOnAConditionForPartTime(){
	workingdays=20
	maxWorkingHoursPM=100
	workedHours=0
	days=0
	hours=0
	while (( (($workedHours < 100 )) && (($days < $workingdays)) )); do
		present=$(($RANDOM%2))
		echo $present
		if (( $present == 1 )); then
			workedHours=$(($workedHours+4))
			if [[  $workedHours -le $maxWorkingHoursPM ]]; then
				hours=$(($hours+4))
			fi
			echo $workedHours
		fi
		days=$(($days+1))
	done
	monthlyWage=$(($hours*20))
	echo "monthly wage for $hours hours is $monthlyWage"
}
echo "select the choice
for full time emoloyee monthly wage based on condition enter 1
for part time emoloyee monthly wage based on condition enter 2"
read choice
case $choice in
	1 )
		WagesOnAConditionForFullTime
		;;
	2)
		WagesOnAConditionForPartTime
		;;
	*)
		echo "select correct choice"
esac
