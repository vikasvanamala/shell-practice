#!/bin/bash

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "sql installation failed"
else
    echo "mysql installation is success"
fi         