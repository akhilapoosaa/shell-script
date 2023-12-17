#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"


LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ] 
    then 
        echo "ERROR:: $2...$R failed $N"
        exit 1
    else
        echo "$2.... $G success $N"
    fi 
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 #you can give any number other than 0
else
    echo "you are a root user"  
fi  #fi means reverse of if, indicating condition end

yum install mysql -y  &>> $LOGFILE

VALIDATE $? "installing mysql"    #exit status is printing as arg which is mentioned above in function as $2

yum install git -y  &>> $LOGFILE

VALIDATE $? "installing git"