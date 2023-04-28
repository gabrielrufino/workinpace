if [ ! $(which ufw) ]
then
  apt update
  apt install ufw -y
fi

if [ ! $(which ufw-docker) ]
then
  wget -O /usr/local/bin/ufw-docker \
    https://github.com/chaifeng/ufw-docker/raw/master/ufw-docker
  chmod +x /usr/local/bin/ufw-docker
fi
