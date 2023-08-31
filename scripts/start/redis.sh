cd $HOME/docker-compose.yml

if [ $START_REDIS == 'true' ]
then
  echo "REDIS_CONTAINER_NAME=workinpace-redis" >> .env
  echo "REDIS_PASSWORD=$REDIS_PASSWORD" >> .env
  echo "REDIS_RESTART_POLICY=unless-stopped" >> .env
  docker compose up redis -d
else
  docker compose stop redis
fi
