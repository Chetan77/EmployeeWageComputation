#!/bin/bash
PartTimeEmployeeWage(){
	partTimeHours=4
	wagePerHour=20
	partTimewage=$(($partTimeHours * $wagePerHour))
	echo "part time wage is $partTimewage"
}
PartTimeEmployeeWage