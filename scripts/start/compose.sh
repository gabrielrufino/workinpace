DOCKER_COMPOSE_FOLDER=$HOME/docker-compose.yml
if [ ! -d $DOCKER_COMPOSE_FOLDER ]
then
  git clone https://github.com/gabrielrufino/docker-compose.yml.git $DOCKER_COMPOSE_FOLDER
  cd $DOCKER_COMPOSE_FOLDER
else
  cd $DOCKER_COMPOSE_FOLDER
  git checkout main
  git pull
fi
git checkout $(git tag -l 'v3*' | sort -V | tail -n1)
printf "# Environment variables\n\n" > .env
