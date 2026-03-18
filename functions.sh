#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo " Error: please run with root access"
    exit 1;
fi

validate(){
   if  [ $1 -ne 0 ]; then
    echo "$2 installation failed"
    exit 1
   else
    echo "$2 installation success"
   fi 

}

dnf install mysql -y
validate($? mysql)

dnf install nginx -y
validate($? nginx) 


