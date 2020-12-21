#!/bin/bash -x

#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
salary=0
RATE_PER_HR=20
MAX_WORK_DAYS=20;
MAX_WORK_HRS=60;

#VARIABLES
TotalworkingDays=1;
TotalworkingHrs=0;

while [[ $TotalworkingHrs -lt $MAX_WORK_HRS && $TotalworkingDays -lt $MAX_WORK_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        case $empCheck in
                $IS_FULL_TIME)
                echo "FullTime Employee"
                empHrs=8
                ;;
                $IS_PART_TIME)
                echo "PartTime Employee"
                empHrs=4
                ;;
                *)
                echo "Employee is Absent"
                empHrs=0;;
		esac
TotalworkingHrs=$(($TotalworkingHrs+$empHrs))

done

TotalSalary=$(($TotalworkingHrs*$RATE_PER_HR ))

function getWorkHrs()
{
        case $1 in
                $IS_FULL_TIME)
                	empHrs=8
                	;;
                $IS_PART_TIME)
                	empHrs=4
                	;;
                *)
                	empHrs=0
                	;;
        esac
        echo $empHrs
}

while [[ $TotalworkingHrs -lt $MAX_WORK_HRS && $TotalworkingDays -lt $MAX_WORK_DAYS ]]
do
        TotalworkingDays=$((TotalworkingDays+1))
        empCheck=$((RANDOM%3))
        empHrs="$getWorkHrs $empCheck "
        TotalworkingHrs=$(( $TotalworkingHrs+$empHrs ))

done
TotalSalary=$(($TotalworkingHrs*$RATE_PER_HR ))


echo "Employee wage per month:" $TotalSalary
