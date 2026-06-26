#!/bin/bash
a=#1
b=$2
c=$3

echo " All variables passed to script: $@"
echo " FIrst variable: $1"
echo "Script name:$0"
echo " Who is running script: $USER"
echo " Which direcotry:$PWD"
echo " Home Directory :$HOME"
echo "PID of current script: $$"
sleep 5 &
echo " PID of current background runing script just now : $!"
wait $!
echo " Line Number:$LINENO"
echo "script exeuted in $SECONDS seconds"
echo "Random number: $RANDOM"
echo " exit code of previous command: $?"
