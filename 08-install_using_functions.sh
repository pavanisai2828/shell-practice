#!/bin/bash
LOGS_DIR=/home/ec2-user/shell-logs
LOG_FILE="$LOGS_DIR/$0.log"

USER=$(id -u)

if [ $USER -ne 0 ]; then
    echo "Please switch to root"
    exit 1
fi



CHECK_INSTALL(){
    dnf list installed $1 &>> $LOG_FILE
    if [ $? -eq 0 ];then
        echo " already installed skipping"
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
CHECK_INSTALL nginx

