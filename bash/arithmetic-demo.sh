#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input a No.1? " firstnum # read with -p promts the input and ads to variable
read -p "Input a No.2? " secondnum
read -p "Input a No.3? " thirdnum
sum=$((firstnum + secondnum + thirdnum)) # summing up 3 variables
product=$((firstnum * secondnum * thirdnum)) # generating the products

# Provinding summary of what processed previously with cat to print in nice formate
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers are $sum
The product of $firstnum , $secondnum and $thirdnum numbers are $product
EOF
