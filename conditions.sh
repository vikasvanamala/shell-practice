#!/bin/bash

echo "enter a number"
read number

remainder=$(($number % 2))

if [ remainder -eq 0 ]; then
    echo "given number $number is even"
else
    echo "given number $number is odd"
fi        
