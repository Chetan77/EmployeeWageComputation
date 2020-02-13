echo "Well Come to EmployeeWage computation"
#!/bin/bash
WagesOnACondition(){
	hoursperDay=8
	workingdays=20
	maxWorkingHoursPM=100
	workedHours=0
	days=0
	while (( (($workedHours<=$maxWorkingHoursPM )) && (($days<$workingdays)) )); do
		workedHours=$(($workedHours+$(($RANDOM%8))))
		days=$(($days+1))
	done
	monthlyWage=$(($workedHours*20))
	echo "monthly wage for $workedHours hours is $monthlyWage"
}
WagesOnACondition