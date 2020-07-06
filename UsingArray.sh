#! /bin/bash

# Author : Debabrata Panda
# Date   : 25/June/2020
# Purpose: Test Arrya varibales

NAME[0]="Samayamantri"
NAME[1]="Venkata"
NAME[2]="Raghava"
NAME[3]="Naga"
NAME[4]="Sai"
NAME[5]="Shankara"
NAME[6]="Subrahmanya"
NAME[7]="Lakshmi"
NAME[8]="Krishna"
NAME[9]="Vivek"

echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
echo "Second Index: ${NAME[2]}"
echo "Second Index: ${NAME[3]}"
echo "Second Index: ${NAME[4]}"
# echo "Second Index: ${NAME[5]}"
# echo "Second Index: ${NAME[6]}"
# echo "Second Index: ${NAME[7]}"
# echo "Second Index: ${NAME[8]}"
# echo "Second Index: ${NAME[9]}"

echo "Full Name Using \"\$*\" : ${NAME[*]}
echo "Full Name Using \"\$@\" : ${NAME[@]}

MyName=(Mr Debabrata Debendra Bidyadhar [5]=Panda)

echo "Array size: ${#MyName[*]}"

echo "Array items:"
for item in ${MyName[*]}
do
    printf "   %s\n" $item
done

echo "Array indexes:"
for index in ${!MyName[*]}
do
    printf "   %d\n" $index
done

echo "Array items and indexes:"
for index in ${!MyName[*]}
do
    printf "%4d: %s\n" $index ${MyName[$index]}
done
