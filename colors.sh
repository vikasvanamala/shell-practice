#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo -e " $G Error: please run with root access $N"
    exit 1;
fi

validate(){
   if  [ $1 -ne 0 ]; then
    echo -e "$R $2 installation failed $N"
    exit 1
   else
    echo -e "$Y $2 installation success $N"
   fi 

}

dnf install mysql -y
validate $? mysql

dnf install nginx -y
validate $? nginx 