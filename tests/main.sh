# Installing dependencies
sudo apt install -y wget

if [ ! $(which act) ]
then
 curl -s https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
 alias act='./bin/act'
fi

# Downloading docker-compose.yml
wget https://raw.githubusercontent.com/gabrielrufino/docker-compose.yml/master/docker-compose.yml

# Initializing infrastructure
docker compose up -d debian
exec_on_host () {
  docker compose exec debian $1
}
exec_on_host 'apt update'
exec_on_host 'apt upgrade -y'
exec_on_host 'apt install -y openssh-server openssl'
exec_on_host 'useradd -p $(openssl passwd -1 admin) admin'
exec_on_host 'service ssh start'

SERVER_SSH_HOST=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' workinpace-debian-1)

# Running tests
./bin/act workflow_dispatch \
  --secret SERVER_SSH_HOST=$SERVER_SSH_HOST \
  --secret SERVER_SSH_PORT=22 \
  --secret SERVER_SSH_USER=admin \
  --secret SERVER_SSH_PASSWORD=admin \
  --secret DOMAIN=localhost \
  --secret ACME_EMAIL=contato@gabrielrufino.com

# Cleaning
docker compose down
rm docker-compose.yml
sudo rm -Rf ./bin

