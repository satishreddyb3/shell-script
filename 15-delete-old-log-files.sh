#!bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=/tmp/shellscript-logs
if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R soure directory not exit : $SOURCE_DIR does not exit. $N
fi
FILES_TO_DELETE=$(find . -type f -mtime +14 -name "*.log")
while IFS= read -r line
do
    echo "Deleting file: $line
done <<< $FILES_TO_DELETE