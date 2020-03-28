#!/bin/bash -x

printf "Welcome to user registration problem \n"

# Constants
COUNTRY_CODE=91
#function for valid first name
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

#function for valid last name
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

#function for valid email id
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

#function for valid mobile number
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

#function for valid password
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

#function call
validateFirstName
validateLastName
validateEmailId
validateMobileNumber
validatePassword
