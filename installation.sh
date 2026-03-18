#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "Error: please run this with root access"
    exit 1
fi
    
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "sql installation failed"
    exit 1
else
    echo "mysql installation is success"
fi         