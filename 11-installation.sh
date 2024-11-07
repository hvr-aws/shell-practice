#!/bin/bash

USERID=$(id -u)
echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "then run the script with root previlage"
    exit 1
fi

# Just checking whether installed or not
dnf list installed git


if [ $? -ne 0 ]
then
    echo "git is not installed going to install now...."
    dnf install git -y
    if [$? -ne 0 ]
    then
        echo "Git installation is not success...check it"
        exit 1
    else
        echo "Git installation is success"
    fi
else
    echo "Git is already installed, nothing to do.."
fi

