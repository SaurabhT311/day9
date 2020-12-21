#!/bin/bash -x
empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
Salary=0
RatePerHr=20
case $empCheck in
        $isFullTime)
        echo "FullTime Employee"
        empHrs=8
        ;;
        $isPartTime)
        echo "PartTime Employee"
        empHrs=4
        ;;
        *)
        echo "Employee is Absent"
        empHrs=0
        ;;
esac

Salary=$(( $RatePerHr*$empHrs ))
echo "Employee wage:" $Salary
