#!/bin/bash

echo "all variables passed in the script: $@"
echo "number of variables passed is : $#"
echo "current script name: $0"
echo "current working directory : $PWD"
echo " home directory of current user: $HOME"
echo "PID of script executing now : $$"
sleep 100 &
echo "PID of last backgrounfd command: $!"