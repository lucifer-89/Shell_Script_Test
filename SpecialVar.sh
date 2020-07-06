#! /bin/bash

# Author : Debabrata Panda
# Date   : 25/June/2020
# Purpose: Test Special varibales
# Param  : Zara Ali 10 Years Old

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

for TOKEN in $*
do
   echo $TOKEN
done

# execute the following command post script run
# $echo $?
