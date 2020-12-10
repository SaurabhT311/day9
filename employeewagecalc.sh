#!/bin/bash -x
echo "Welcome To employee Wage Computation"

attendance=$(( RANDOM%2 ))

if [ $attendance -eq 0 ]
then
        echo "Employee is Present"
else
        echo "Employee is Absent"
fi
