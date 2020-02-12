DailyWage(){
	hours=8
	wagePerHour=20
	dailywage=$(($hours * $wagePerHour))
	echo "dailywage is $dailywage"
}
DailyWage