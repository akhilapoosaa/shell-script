#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]   #compared to last script as we pass args to varibales here we are passing args to functions
    then 
        echo "ERROR:: $2.....failed"
        exit 1
    else
        echo "$2.....success"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #you can give any number other than 0
else
    echo "you are a root user"  
fi  #fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE $? "mysql is installing"

yum install git -y

VALIDATE $? "git is installing"