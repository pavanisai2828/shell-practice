#!/bin/bash

Num1=10
Num2=linux
Num3=happy
sum=$(($Num1+$Num2))
sum2=$(($Num2+$Num3))
echo "Sum is :$sum"
echo "Sum2 is :$sum2"

Movies=("RRR","VARANASI","Puspha")
echo "Movies are :${Movies[@]}"
echo "First movie:${Movies[0]}"
echo "Seconf movie: ${Movies[1]}"
