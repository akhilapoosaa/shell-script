#!/bin/bash

ID=$(id -u)  

VALIDATE() { 
    if [ $? -ne 0 ]
    then 
        echo "ERROR:: installing  is failed"
        exit 1
    else
        echo "Installing MYSQL is Success"
    fi 
}

 if [ $ID -ne 0 ]
 then 
     echo "Error::please run the script with root access"
     exit 1
 else  
    echo "you are a root user"
 fi #means reverse of if, indicating condition and

 yum install 

 VALIDATE ? 