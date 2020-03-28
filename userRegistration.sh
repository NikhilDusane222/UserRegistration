#!/bin/bash -x
# Constants
COUNTRY_CODE=91

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
}
function validateMobileNumber()
{
	read -p "Enter your mobile number:" mobileNumber
	patternForMobileNumber="^$COUNTRY_CODE[ ][9876]{1}[0-9]{9}"
	if [[ $mobileNumber =~ $patternForMobileNumber ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
function validatePassword()
{
	read -p "Enter your password:" password
	patternForPassword="^.{8}$"
	if [[ $password =~ $patternForPassword ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}
echo "Welcome to user registration problem "
#validateFirstName
#validateLastName
#validateEmailId
#validateMobileNumber
validatePassword
