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
