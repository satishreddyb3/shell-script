ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
else
    echo "you are root user"
f1
echo "All arguments passed:$@"
for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y 
        VALIDATE $? "Installion of $package"
done