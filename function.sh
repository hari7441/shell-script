#!/bin/bash
validate(){
    if [ $1 -ne 0 ]
    then
        echo " $2......is failure"
        exit 1
    else 
        echo " $2.......is success"
        exit 1
    fi    
}
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please switch to root user to install"
    exit 1
fi

yum install mysql -y
validate $? "installing of git"
