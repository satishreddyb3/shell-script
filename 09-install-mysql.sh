ID=$(id -u)

if [$ID -ne 0]
then
    echo "error:please run thee script with root acess"
else
    echo "you are root user"
fi