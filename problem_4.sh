#!/bin/bash
# Chechurov Vladimir, BPI-227
# Script represents the code of finding the first N prime numbers

# This function checks if passed number is prime, returns 1 if the number is prime else 0
# takes one argument - number for check
function check_if_prime() {
	local i=2
	local n=$1
	while [ $i -lt $(($n/2)) ] || [ $i -eq $(($n/2)) ];
	do
		res=$(($n%$i))
		if [ $res -eq 0 ]; then
			return 0
		fi
		((i++))
	done
	return 1
}

# This function finds the first n prime numbers, takes one argument - number of prime numbers
function find_numbers() {
	local i=0
	local curr=2
	local n=$1
	while [ $i -lt $n ];
	do 
		check_if_prime $curr
		local ans=$?
		if [ $ans -eq 1 ]; then
			echo "Found number: $curr"
			((i++))
		fi
		((curr++))
	done
}

# This part takes from user the number of prime numbers and calls 'find_numbers' function
echo "Enter N, the number of prime numbers to search"
read num
find_numbers $num
echo "Program finished"
