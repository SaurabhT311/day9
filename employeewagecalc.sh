#!/bin/bash -x
randomCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
Salary=0
RatePerHr=20

if [ $isFullTime -eq $randomCheck ]
then
        numOfworkingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
        numOfworkingHrs=4
else
        numOfworkingHrs=0
fi

Salary=$(( $RatePerHr*$numOfworkingHrs ))
echo "Employee wage:" $Salary
