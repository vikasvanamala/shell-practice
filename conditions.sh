#!/bin/bash

echo "enter a number"
number=$1
remainder=$(($number % 2))

if [ remainder -eq 0 ]; then
    echo "given number $number is even"
    exit 1
else
    echo "given number $number is odd"
fi        
