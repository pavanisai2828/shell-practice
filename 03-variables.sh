#!/bin/bash

start_time=$(date +%s)
a=$1
b=$2

echo "Hey $1"
echo "Hey $2"
echo "Welcome $1 $2"

echo "please enter your username:"
read user_name # here user_name is a variable
echo "I am $user_name"
echo " Please enter you passowrd:"
read -s PASSWORD

echo "password is $PASSWORD"


sleep 10
end_time=$(date +%s)
total_time_taken=$($end_time-$start_time)
echo "total time taken for script"