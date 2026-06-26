#!/bin/bash

LOGS_DIR=/home/ec2-user/shell-logs
LOG_FILE="$LOGS_DIR/$0.log"
Timestamp=$(date "+%Y-%m-%d %H:%M:%S"   )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USER=$(id -u)

if [ $USER -ne 0 ]; then
    echo "Please switch to root"
    exit 1
fi



CHECK_INSTALL(){
    dnf list installed $1 &>> $LOG_FILE
    if [ $? -eq 0 ];then
        echo -e "$Timestamp $R already $N installed skipping"
    else
        echo "installing"
        dnf install $1
        VALIDATE $?
    fi

}

VALIDATE(){
    if [ $1 -eq 0 ];then
        echo " installation success"
    else
        echo "installation failed"
    fi

}

for package in $@
do  
    echo "package name : $package"
    CHECK_INSTALL $package
done

