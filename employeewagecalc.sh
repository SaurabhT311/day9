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
        ((TotalworkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$getWorkHrs $empCheck "
        TotalworkingHrs=$(( $TotalworkingHrs+$empHrs ))

done
TotalSalary=$(($TotalworkingHrs*$RATE_PER_HR ))

echo "Employee wage per month:" $TotalSalary
