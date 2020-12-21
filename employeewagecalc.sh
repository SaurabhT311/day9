  
#!/bin/bash -x

#CONSTANTS
IS_FULL_TIME=1
IS_PART_TIME=2
salary=0

RATE_PER_HR=20
MAX_WORK_DAYS=20;
MAX_WORK_HRS=100;

#VARIABLES
TotalworkingDays=1;
TotalworkingHrs=0;

declare -A DailyWageDic

function getWorkHrs()
{
        case $empCheck in
                $IS_FULL_TIME)
                empHrs=8 ;;
		$IS_PART_TIME)
                empHrs=4 ;;
                *)
                empHrs=0 ;;
        esac
        echo $empHrs
}

while [[ $TotalworkingHrs -lt $MAX_WORK_HRS && $TotalworkingDays -lt $MAX_WORK_DAYS ]]
do
        TotalWorkingDays=$((TotalworkingDays+1))
        empCheck=$((RANDOM%3))
        empHrs="$(getWorkHrs $empCheck)"
        DailyWage=$(($empHrs*$RATE_PER_HR))
        DailyWageDic["Day"$TotalworkingDays]=$DailyWage
		TotalworkingHrs=$(( $TotalworkingHrs+$empHrs ))
done

TotalSalary=$(( $TotalworkingHrs*$RATE_PER_HR ))

echo "Employee wage per month:" $TotalSalary
echo "Array elements" ${DailyWageDic[@]}
echo "IndexPosition" ${!DailyWageDic[@]}
