#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"

#Rolling die as per the number of words in my first name(Narinder)
echo"Rolling the die as per my first name
$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1)),$((RANDOM % 6 + 1))"
