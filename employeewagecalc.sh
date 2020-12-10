#!/bin/bash -x
randomCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20


if [ $isFullTime -eq $randomCheck ]
then
        numOfworkingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
        numOfworkingHrs=4
else
        numOfworkingHrs=0
fi

salary=$(( $ratePerHr*$numOfworkingHrs ))
echo "Employee wage:" $salar
