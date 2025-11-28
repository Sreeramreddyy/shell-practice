#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne ]; then
    echo "ERROR:: Please run this script with root privelege"
fi

dnf install mysql -y

if [ $? -ne ]; then 
    echo "ERROR:: Installing MySQL is failure"
else 
    echo "Installing MySQL is SUCCESS"
fi        