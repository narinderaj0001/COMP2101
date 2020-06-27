#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#Task One: asking the user for password
read -p "Please enter the password:" myString
referenceString="bash"

#Task Two: Improving the script by entering the password
if [ $myString == $referenceString ]
then echo "login successful"
else
  echo "login failed"
fi
#Task Three: Improving the script further by running it for five times
if [ $myString != $referenceString ];
then
  echo "password is wrong"
  echo "try attempt 2"
  if [ $myString != $referenceString ];
  then
    echo "password is wrong"
    echo "try attempt 3"
    if [ $myString != $referenceString ];
    then
      echo "password is wrong"
      echo "try attempt 4"
      if [ $myString != $referenceString ];
      then
        echo "password is wrong"
        echo "try attempt 5"
        if [ $myString != $referenceString ];
        then
          echo "password is wrong"
          echo "game over"
        else echo "login successful"
        fi
      else echo "login successful"
      fi
    else echo "login successful"
    fi
  else echo "login successful"
  fi      

fi
