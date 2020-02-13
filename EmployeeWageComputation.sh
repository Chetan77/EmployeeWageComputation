#!/bin/bash
WagesOnAConditionForFullTime(){
	workingdays=20
	workedHours=0
	days=0
	while (($days < $workingdays)); do
		present=$(($RANDOM%2))
		if (( $present == 1 )); then
			workedHours=$(($workedHours+8))
		fi
		days=$(($days+1))
	done
	return $workedHours
}

WagesOnAConditionForPartTime(){
	workingdays=20
	workedHours=0
	days=0
	while (($days < $workingdays)); do
		present=$(($RANDOM%2))
		if (( $present == 1 )); then
			workedHours=$(($workedHours+4))
		fi
		days=$(($days+1))
	done
	return $workedHours
}
echo "select the choice
for full time emoloyee monthly hours enter 1
for part time emoloyee monthly hours enter 2"
read choice
case $choice in
	1 )
		WagesOnAConditionForFullTime
		hours=$?
		echo "work hours of a full time employee are $hours hours"
		;;
	2)
		WagesOnAConditionForPartTime
		hours=$?
		echo "work hours of a part time employee are $hours hours"
		;;
	*)
		echo "select correct choice"
esac
