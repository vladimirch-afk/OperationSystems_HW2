#!/bin/bash
# Chechurov Vladimir, BPI-227
# Script represents 'if' syntax

# This part compares two numbers with single square-backet statemant
n=0
m=1
if [ "$n" -gt "$m" ]; then
	echo "n=$n is greater than m=$m"
else 
	echo "n=$n is less than m=$m"
fi

s_1="Ubuntu"
s_2=""

# This part checks if s_1 is empty with single square-backet statemant
if [ -n "$s_1" ]; then
	echo "s_1=$s_1; s_1 is not empty"
else 
	echo "s_1 is empty"
fi

# This part checks if s_2 is empty with single square-backet statemant
if [ -n "$s_2" ]; then
	echo "s_2=$s_2; s_2 is not empty"
else 
	echo "s_2 is empty"
fi

# This part checks if s_1 or s_2 is not empty with double square-backet statemant
if [ -n "$s_1" ] || [ -n "$s_2" ] ; then
	echo "At least one of the strings is not empty"
else 
	echo "Both strings are empty"
fi
