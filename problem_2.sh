#!/bin/bash
# Chechurov Vladimir, BPI-227
# Script represents 'while' syntax

i=0
n=10

# This part prints numbers from 0 to 9, uses while with single square-backet statemant
echo "------Counting from 0 to 9-----"
while [ $i -lt $n ];
do
	echo "Counter value: $i"
	((i++))
done

# This part prints numbers from 0 to 9, but stops, when reaches 8, uses while with double square-backet statemant
echo "------Counting from 0 to 9, but finish on 8-----"
i=0
while [ $i -lt $n ] && [ $i != 8 ];
do
	echo "Counter value: $i"
	((i++))
done

# This part prints lines readed from the input.txt file, uses while to read the whole file
echo "-----Counting number of strings in file-----"
file=input.txt
counter=0
while read -r line;
do
	echo "Readed string: $line"
	((counter++))
done < "$file"
echo "Number of readed strings: $counter"
