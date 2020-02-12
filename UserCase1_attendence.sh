#!/bin/bash
echo "Employee attendence"
if [[ $(($RANDOM%2)) == 0 ]]; then
	echo "employee is present"
else
	echo "employee is not present"
fi