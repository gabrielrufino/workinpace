if [ ! $(which git) ]
then
  apt update
  apt install git -y
fi
