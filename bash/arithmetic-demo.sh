#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#asking the user for entering three different numbers
echo "Please enter the first number"
read firstNumber
echo "Please enter the second number"
read secondNumber
echo "Please enter the third number"
read thirdNumber

#doing all the calculations
#sum
sum=$((firstNumber+secondNumber+thirdNumber))
#product
product=$((firstNumber*secondNumber*thirdNumber))

#displaying the results
cat <<  EOF
echo "the sum of three numbers is $sum"
echo "the product of three numbers is $product"
EOF
