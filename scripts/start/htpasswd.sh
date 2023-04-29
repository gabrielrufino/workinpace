if [ ! $(which htpasswd) ]
then
  apt update
  apt install apache2-utils -y
fi
