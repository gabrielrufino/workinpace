if [ ! $(which docker) ]
then
  apt remove docker docker-engine docker.io containerd runc -y
  apt update
  apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
  mkdir -p /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
  apt update
  apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
fi
