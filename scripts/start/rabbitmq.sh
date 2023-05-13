cd $HOME/docker-compose.yml

if [ $START_RABBITMQ = 'true' ]
then
  echo "RABBITMQ_CONTAINER_NAME=workinpace-rabbitmq" >> .env
  echo "RABBITMQ_DEFAULT_USER=$RABBITMQ_USERNAME" >> .env
  echo "RABBITMQ_DEFAULT_PASS=$RABBITMQ_PASSWORD" >> .env
  echo "RABBITMQ_RESTART_POLICY=unless-stopped" >> .env
  docker compose up rabbitmq -d
else
  docker compose stop rabbitmq
fi
