#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo -e " $R Error: please run with root access $N"
    exit 1;
fi

validate(){
   if  [ $1 -ne 0 ]; then
    echo -e "$R $2 installation failed $N"
    exit 1
   else
    echo -e "$G $2 installation success $N"
   fi 

}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? mysql
else
    echo -e "$Y mysql is already installed skipping... $N"
fi    

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    validate $? nginx 
else
    echo -e "$Y nginx is already installed skipping.. $N"
fi        