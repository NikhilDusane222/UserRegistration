#!/bin/bash -x

printf "Welcome to user registration problem \n"

read -p "Enter the first name:" firstName
# Pattern for first name
patternForFirstName="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $patternForFirstName ]]
then
	echo Valid
else
	echo Invalid
fi
read -p "Enter the last name:" lastName
# Pattern for last name
patternForLastName="^[A-Z]{1}[a-z]{2,}$"

if [[ $lastName =~ $patternForLastName ]]
then
	echo Valid
else
	echo Invalid
fi
