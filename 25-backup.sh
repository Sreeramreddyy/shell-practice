#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # if not provided considered as a 14 days

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/17-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

SOURCE_DIR=/home/ec2-user/app-logs

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

USAGE (){
    echo -e "$R UASGE:: sudo sh 25-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS>[optional], default 14 days] $N"
    exit 1
}

if [ $# -lt 2]; then
    USAGE
fi

### Check SOURCE_DIR Exits ###
if [ ! -d $SOURCE_DIR ]; then
    echo -e "$R source $SOURCE_DIR does not exits $N"
fi