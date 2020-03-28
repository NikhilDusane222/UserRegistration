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
	patternForPassword="^.{8,}"
	patternForPassword2="[A-Z]{1,}"
	patternForPassword3="[0-9]{1,}"
	patternForPassword4="^[0-9A-Za-z]*[!@#$%&][A-Za-z0-9]*$"
	if [[ $password =~ $patternForPassword ]]
	then
		if [[ $password =~ $patternForPassword2 ]]
		then
			if [[ $password =~ $patternForPassword3 ]]
			then
				if [[ $password =~ $patternForPassword4 ]]
				then
					echo Valid
				else
					echo "Invalid password. password should contain exactly one special character"
				fi
			else
				echo "Invalid password. password should at least one numeric character"
			fi
		else
			echo "Invalid password. password should contain at least one Uppercase alphabet"
		fi
	else
		echo "Invalid password. password should be of minimum 8 characters"
	fi
}
echo "Welcome to user registration problem "
validateFirstName
validateLastName
validateEmailId
validateMobileNumber
validatePassword
