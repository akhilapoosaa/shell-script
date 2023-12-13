#!/bin/bash

 ID=$(id -u)

 if [ $ID -ne 0 ]
 then 
     echo "Error::please run the script with root access"
     exit 1
 else  
    echo "you are a root user"
 fi #means reverse of if, indicating condition and

 yum install mysql -y     

 if [ $? -ne 0 ]
 then 
     echo "ERROR:: installing MySQL is fsiled"
 else
     echo "Installing MYSQL is Success"
 fi   

 yum install git -y

 if [ $? -ne 0 ]
 then 
     echo "ERROR:: installing Git is fsiled"
 else
     echo "Installing Git is Success"
 fi  

