echo "WelCome to EmployeeWage computation"
#!/bin/bash
function EmployeeAttendence(){
	echo "Employee attendence"
if [[ $(($RANDOM%2)) == 0 ]]; then
	echo "employee is present"
else
	echo "employee is present"
fi
}
EmployeeAttendence
DailyWage(){
	hours=8
	wagePerHour=20
	dailywage=$(($hours * $wagePerHour))
	echo "dailywage is $dailywage"
}
DailyWage
PartTimeEmployeeWage(){
	partTimeHours=4
	wagePerHour=20
	partTimewage=$(($partTimeHours * $wagePerHour))
	echo "part time wage is $partTimewage"
}
PartTimeEmployeeWage
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
