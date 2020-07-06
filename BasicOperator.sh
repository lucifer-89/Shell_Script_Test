#! /bin/bash

# Author : Debabrata Panda
# Date   : 25/June/2020
# Purpose: Test Basic operators in Shell

NUM_A=100
NUM_B=20
NUM_C=0
STR_A="ABC"
STR_B="DEF"
STR_ZLS=""
# STR_NULL=NULL
# NULL string Possible by unset
STR_NULL='To Be Unset'
unset STR_NULL
# Note : STR_NULL and STR_ZLS above are equal. Both are Zero length Strings but not empty

echo "Arithmatic Operators : Compares by coverting to String"
echo "Number[A] : $NUM_A"
echo "Number[B] : $NUM_B"
echo "Number[C] : $NUM_C"
echo ""

echo "Addition[NUM_A + NUM_B] : `expr $NUM_A + $NUM_B`"
echo "Subtraction[NUM_A - NUM_B] : `expr $NUM_A - $NUM_B`"
echo "Multiplication[NUM_A * NUM_B] : `expr $NUM_A \* $NUM_B`"
echo "Division[NUM_A / NUM_B] : `expr $NUM_A / $NUM_B`"
echo "Modulus[NUM_A % NUM_B] : `expr $NUM_A % $NUM_B`"
NUM_C=$NUM_B
echo "Assignment : $NUM_C [New Value of NUM_C]"
echo "Equality :"
if [ $NUM_A == $NUM_B ]
then
    echo "NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not equal to NUM_B[$NUM_B]"
fi
echo "Not Equality :"
if [ $NUM_A != $NUM_B ]
then
    echo "NUM_A[$NUM_A] is not equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
fi
echo ""
echo ""
echo ""

echo "Relational Operators : Compares by converting to number, if not number then convert value to 0"
echo "Equal"
if [ $NUM_A -eq $NUM_B ]
then
    echo "NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not equal to NUM_B[$NUM_B]"
fi
echo "Not Equal"
if [ $NUM_A -ne $NUM_B ]
then
    echo "NUM_A[$NUM_A] is not equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
fi
echo "Greater Than"
if [ $NUM_A -gt $NUM_B ]
then
    echo "NUM_A[$NUM_A] is greater than NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not greater than NUM_B[$NUM_B]"
fi
echo "Less Than"
if [ $NUM_A -lt $NUM_B ]
then
    echo "NUM_A[$NUM_A] is less than NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not less than NUM_B[$NUM_B]"
fi
echo "Greater Than Equal"
if [ $NUM_A -ge $NUM_B ]
then
    echo "NUM_A[$NUM_A] is greater than or equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not greater than or equal to NUM_B[$NUM_B]"
fi
echo "Less Than Equal"
if [ $NUM_A -le $NUM_B ]
then
    echo "NUM_A[$NUM_A] is less than or equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] is not less than or equal to NUM_B[$NUM_B]"
fi
echo ""
echo ""
echo ""

echo "Compare ==/!= and -eq/-ne"
VAR_COMP_A="01"
VAR_COMP_A=1

if [ 01 == 1 ]
then
    echo "[ 01 == 1 ] is True"
else
    echo "[ 01 == 1 ] is False"
fi
if [ 01 -eq 1 ]
then
    echo "[ 01 -eq 1 ] is True"
else
    echo "[ 01 -eq 1 ] is False"
fi
# echo "In case of -eq If conversion to numeric fails returns 0[Num]"
# if [ "Test" -eq 0 ]
# then
#     echo "[ \"Test\" -eq 0 ] is True"
# else
#     echo "[ \"Test\" -eq 0 ] is False"
# fi
echo ""
echo ""
echo ""

echo "Boolean Operators"
echo "Negation"
if [ $NUM_A != $NUM_B ]
then
    echo "NUM_A[$NUM_A] != NUM_B[$NUM_B] is True, NUM_A[$NUM_A] is not equal to NUM_B[$NUM_B]"
else
    echo "NUM_A[$NUM_A] != NUM_B[$NUM_B] is False, NUM_A[$NUM_A] is equal to NUM_B[$NUM_B]"
fi
echo "OR"
if [ $NUM_A -ne $NUM_B -o $NUM_B -gt 50 ]
then
    echo "NUM_A[$NUM_A] -ne NUM_B[$NUM_B] OR NUM_B[$NUM_B] -gt 50 Return True"
else
    echo "NUM_A[$NUM_A] -ne NUM_B[$NUM_B] OR NUM_B[$NUM_B] -gt 50 Return False"
fi
echo "AND"
if [ $NUM_A -ne $NUM_B -a $NUM_B -gt 50 ]
then
    echo "NUM_A[$NUM_A] -ne NUM_B[$NUM_B] AND NUM_B[$NUM_B] -gt 50 Return True"
else
    echo "NUM_A[$NUM_A] -ne NUM_B[$NUM_B] AND NUM_B[$NUM_B] -gt 50 Return False"
fi
echo ""
echo ""
echo ""

echo "String Operators"
echo "Equal"
if [ $STR_A = $STR_B ]
then
    echo "STR_A[$STR_A] is same as STR_B[$STR_B]"
else
    echo "STR_A[$STR_A] is not same as STR_B[$STR_B]"
fi
echo "Not Equal"
if [ $STR_A != $STR_B ]
then
    echo "STR_A[$STR_A] is not same as STR_B[$STR_B]"
else
    echo "STR_A[$STR_A] is same as STR_B[$STR_B]"
fi
echo "Zero Length"
if [ -z $STR_ZLS ]
then
    echo "STR_ZLS[$STR_ZLS] is 0 length"
else
    echo "STR_ZLS[$STR_ZLS] is not 0 length"
fi
echo "Non Zero Length"
if [ -n $STR_NULL ]
then
    echo "STR_NULL[$STR_NULL] is not 0 length"
else
    echo "STR_NULL[$STR_NULL] is 0 length"
fi
echo "Empty or NULL"
if [ $STR_A ]
then
    echo "STR_A[$STR_A] is not Empty"
else
    echo "STR_A[$STR_A] is Empty"
fi
if [ $STR_ZLS ]
then
    echo "STR_ZLS[$STR_ZLS] is Empty"
else
    echo "STR_ZLS[$STR_ZLS] is not Empty"
fi
if [ $STR_NULL ]
then
    echo "STR_NULL[$STR_NULL] is NULL"
else
    echo "STR_NULL[$STR_NULL] is not NULL"
fi
echo ""
echo ""
echo ""

echo "File Test Operators"
# echo "Block Special"
# echo "Char Special"
# echo "Is Directory"
# echo "Is Ordinary File, not Directory or Special File"
# echo "Is set group ID bit Set"
# echo "Is Sticky bit set"
# echo "Is Named Pipe"
# echo "Is File Descriptor open and Associated with a Terminal"
# echo "Is Set User ID bit set"
# echo "Is Readable"
# echo "Is Writable"
# echo "Is Executable"
# echo "Is File has Size greater than 0"
# echo "Does File Exist. Even if directory True"
