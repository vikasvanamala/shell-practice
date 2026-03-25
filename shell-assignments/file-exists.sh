#!/bin/bash

filename=$1


if [ -e "$filename" ];then
    echo "$filename exists"

    if [ -r "$filename"]; then
        echo $filename is readable
    fi   

    if [ -w "$filenmae"]. then
        echo "file is writable 
    fi    

else
    echo "$filename exists" 

fi    