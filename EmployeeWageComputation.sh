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

