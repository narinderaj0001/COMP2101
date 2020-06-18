#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
#the number of sides on a die
range=6
#the minimum number of sides on a die
bias=1



# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % range + bias))
die2=$(( RANDOM % range + bias ))
# display the results
echo "Rolled $die1, $die2"


# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were
#Adding the range and bias values
sum=$((die1+die2))
echo "The sum of Die1 and Die 2 is $sum"

#calculating the average value of the rolls
average=$((sum/2))
echo "the average of Die1 and Die2 is $average"
