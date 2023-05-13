cd $HOME/docker-compose.yml

if [ $START_PGADMIN == 'true' ]
then
  echo "PGADMIN_CONTAINER_NAME=workinpace-pgadmin" >> .env
  echo "PGADMIN_DEFAULT_EMAIL=$PGADMIN_USERNAME" >> .env
  echo "PGADMIN_DEFAULT_PASSWORD=$PGADMIN_PASSWORD" >> .env
  echo "PGADMIN_RESTART_POLICY=unless-stopped" >> .env
  docker compose up pgadmin -d
else
  docker compose stop pgadmin
fi
