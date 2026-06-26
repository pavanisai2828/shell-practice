#!/bin/bash

$USER=$(id -u)

if [ $USER -ne 0 ]; then
    echo "Please switch to root"
    exit 1
fi

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "mysql is already installed... skipping"
else
    echo "installing mysql"
    dnf install mysql -y
    if [ $? -eq 0 ]; then
        echo "success"
    else
        echo "failed"
    fi
fi

