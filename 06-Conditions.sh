#!/bin/bash
Number=$1

if [$Number -gt 0]; then
    echo "number is greater than 0"
elif [$Number -eq 0]; then 
    echo "number is equal to 0"
elif [$Number -lt 0]; then
    echo "number is lessthan 0"
else
    echo "not a number"
fi
