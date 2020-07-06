#! /bin/bash

# Author : Debabrata Panda
# Date   : 25/June/2020
# Purpose: Use of If-Fi, If-Else-Fi, If-Elif-Else-Fi, Case-Esac

NUM_A=100
NUM_B=20
STR_SHAPE=(CIRCLE TRIANGLE SQUARE PENTAGON HEXAGON)
OPTION="${1}"

if [ $NUM_A -eq $NUM_B ]
then
    echo "NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
elif [ $NUM_A -gt $NUM_B ]
then
    echo "NUM_A[$NUM_A] is greater than NUM_B[$NUM_B]"
elif [ $NUM_A -lt $NUM_B ]
then
    echo "NUM_A[$NUM_A] is less than NUM_B[$NUM_B]"
else
    echo "None of the conditions are met"
fi

case ${STR_SHAPE[1]} in
    "CIRCLE") echo "${STR_SHAPE[0]} has 0 side";;
    "TRIANGLE") echo "${STR_SHAPE[1]} has 3 side";;
    "SQUARE") echo "${STR_SHAPE[2]} has 4 side";;
    "PENTAGON") echo "${STR_SHAPE[3]} has 5 side";;
    "HEXAGON") echo "${STR_SHAPE[4]} has 6 side";;
esac

# case ${option} in 
#    -f) FILE="${2}" 
#       echo "File name is $FILE"
#       ;; 
#    -d) DIR="${2}" 
#       echo "Dir name is $DIR"
#       ;; 
#    *)  
#       echo "`basename ${0}`:usage: [-f file] | [-d directory]" 
#       exit 1 # Command to come out of the program with status 1
#       ;; 
# esac 
