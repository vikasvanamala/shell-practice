#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo " Error: please run with root access"
    exit 1;
fi


dnf install mysql -y

if  [ $? -ne 0 ]; then
    echo " mysql installation failed"
    exit 1
else
    echo "mysql installation success"
fi

dnf install nginx -y

if  [ $? -ne 0 ]; then
    echo " nginx installation failed"
    exit 1
else
    echo "nginx installation success"
fi


