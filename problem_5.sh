#!/bin/bash
# Chechurov Vladimir, BPI-227
# Script represents the code of finding the sum of prime numbers from file

s=0

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

# This function adds a recieved number to the total sum if the number is prime
# takes one argument - number to add
function add_number() {
	local n=$1
	check_if_prime $n
	if [ $? -eq 1 ]; then
		s=$(($s+$n))
		echo "Found odd number: $n"
	fi
}

# This part reads numbers from 'input_5.txt' file, each number in its own line
file=input_5.txt
while read -r line;
do
	echo "Readed number: $line"
	add_number $line
done < "$file"
echo "The sum of odd numbers in the file '$file': $s"
