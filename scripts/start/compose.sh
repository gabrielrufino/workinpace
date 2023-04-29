DOCKER_COMPOSE_FOLDER=$HOME/docker-compose.yml
if [ ! -d $DOCKER_COMPOSE_FOLDER ]
then
  git clone https://github.com/gabrielrufino/docker-compose.yml.git $DOCKER_COMPOSE_FOLDER
  cd $DOCKER_COMPOSE_FOLDER
else
  cd $DOCKER_COMPOSE_FOLDER
  git pull
fi
printf "# Environment variables\n\n" > .env
