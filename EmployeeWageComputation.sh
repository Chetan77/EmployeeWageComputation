#!/bin/bash
echo "enter the choice"
echo "for employee attendence enter 1
for employee dailywage enter 2
for employee partTimewage enter 3"
read choice
case $choice in
	1 )
		function EmployeeAttendence(){
			echo "Employee attendence"
			if [[ $(($RANDOM%2)) == 0 ]]; then
				echo "employee is present"
			else
				echo "employee is not present"
			fi
		}
		EmployeeAttendence
		;;
	2 )
		DailyWage(){
			hours=8
			wagePerHour=20
			dailywage=$(($hours * $wagePerHour))
			echo "dailywage is $dailywage"
		}
		DailyWage
		;;
	3 )
		PartTimeEmployeeWage(){
			partTimeHours=4
			wagePerHour=20
			partTimewage=$(($partTimeHours * $wagePerHour))
			echo "part time wage is $partTimewage"
		}
		PartTimeEmployeeWage
		;;
	* )
	echo "enter a correct choice"	
esac
