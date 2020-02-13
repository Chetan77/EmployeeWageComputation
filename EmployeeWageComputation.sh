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
		;;
	2)
		WagesOnAConditionForPartTime
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
#!/bin/bash
dailyAndTotalWageOfFullTime(){
	declare -a fullTime
	total=0
	present=0
	for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			fullTime[$i]=160

		else
			fullTime[$i]=0
		fi
	done
	for (( i = 0; i < 20; i++ )); do
		total=$(($total+$((fullTime[$i]))))
		echo -n "$((fullTime[$i]))  "
	done
	echo ""
	echo "total presents are $present"
	echo "total wage of a full time employee of $present days is $total"
}
dailyAndTotalWageOfPartTime(){
	declare -a partTime
	total=0
	present=0
	for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			partTime[$i]=80

		else
			partTime[$i]=0
		fi
	done
	for (( i = 0; i < 20; i++ )); do
		total=$(($total+$((partTime[$i]))))
		echo -n "$((partTime[$i]))  "
	done
	echo ""
	echo "total presents are $present"
	echo "total wage of a part time employee of $present days is $total"
}
echo "select the choice 
for full time employee daily wage and total wage enter 1
for part time employee daily wage and total wage enter 2"
read choice
case $choice in
	1 )
		dailyAndTotalWageOfFullTime
		;;
	2 )
		dailyAndTotalWageOfPartTime
		;;
esac
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
