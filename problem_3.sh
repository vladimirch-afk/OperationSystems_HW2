#!/bin/bash
# Chechurov Vladimir, BPI-227
# Script represents the syntax of functions

# This function prints a string, takes no arguments
function no_args() {
	echo "This is a functions with no arguments"
}

# This function prints a string with recieved argument, takes one argument
function with_args() {
	echo "This is a functions with argument passed, the argument is $1"
}

# This function prints a sum of two recieved numbers and returns it, takes two arguments and returns a value
function return_sum() {
	local a=$1
	local b=$2
	echo "This functions returns the sum of two passed numbers, the numbers: $1, $2"
	return $(($a+$b))
}

# This function prints a message, takes no arguments, this function is called from another function
function print() {
	echo "This function was called from another function"
}

# This function prints a message, takes no arguments, this function calls 'print' function
function call() {
	echo "This function calls another function"
	print
}

# This part calls the represented functions
no_args
with_args WORD
return_sum 1 2
echo "Returned sum is $?"
call

