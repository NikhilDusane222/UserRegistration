#!/bin/bash -x

printf "Welcome to user registration problem \n"

read -p "Enter the first name:" firstName
patternForFirstName="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $patternForFirstName ]]
then
	echo Valid
else
	echo Invalid
fi
