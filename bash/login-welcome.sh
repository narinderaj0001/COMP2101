#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
myname="Narinder"
hostname=$(hostname)

#Capturing the date and time
day=$(date +%A)
hour=$(date +%I)
minute=$(date +%M)
meridian=$(date +%p)

echo "Today is  $day and the time is $hour:$minute. The meridian is: $meridian"

#using the conditional operators for representing the values
if [ $day == "Monday" ]
then
  title="I hate Monday"
elif [ $day == "Tuesday" ]
then
  title="Tuesdy will be cold"
elif [ $day == "Wednesdy" ]
then
  title=" Wednesday is third day of week "
elif [ $day == "THursday" ]
then
  title="Thursday will be a  wedding"
elif [ $day == "Friday" ]
then
  title="Friday is the last working day"
elif [ $day == "Saturday" ]
then
  title="Party on Saturday"
elif [ $day == "Sunday" ]
then
  title="I love Sunday"


fi

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $myname!"

EOF
