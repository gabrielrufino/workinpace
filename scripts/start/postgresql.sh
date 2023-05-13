cd $HOME/docker-compose.yml

if [ $START_POSTGRESQL == 'true' ]
then
  echo "POSTGRESQL_CONTAINER_NAME=workinpace-postgres" >> .env
  echo "POSTGRESQL_USER=$POSTGRESQL_USER" >> .env
  echo "POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD" >> .env    
  echo "POSTGRESQL_RESTART_POLICY=unless-stopped" >> .env
  docker compose up postgres -d
else
  docker compose stop postgres
fi
