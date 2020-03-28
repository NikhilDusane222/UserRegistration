#!/bin/bash -x

function validateFirstName()
{
	read -p "Enter the first name:" firstName
	# Pattern for first name
	patternForFirstName="^[A-Z]{1}[a-z]{2,}$"
	if [[ $firstName =~ $patternForFirstName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
function validateLastName()
{
	read -p "Enter the last name:" lastName
	# Pattern for last name
	patternForLastName="^[A-Z]{1}[a-z]{2,}$"
	if [[ $lastName =~ $patternForLastName ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
function validateEmailId()
{
	read -p "Enter your email id:" emailId
	patternForEmailId="^[a-zA-Z]+([.]?[+\-a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-z]{2,4}([.]?[a-z]{2,4})?$"
	if [[ $emailId =~ $patternForEmailId ]]
	then
		echo Valid
	else
		echo Invalid
	fi
	echo $result
}
echo "Welcome to user registration problem "
validateFirstName
validateLastName
validateEmailId
