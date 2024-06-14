ID=$(id -u)
echo "script name :$0"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: $2 failed"
        exit 1
    else
        echo "$2 SUCCESS"
    fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi
yum install mysql -y
VALIDATE $? "installing sql"
yum install git -y
VALIDATE $? "installing git"
