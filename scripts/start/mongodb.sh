cd $HOME/docker-compose.yml

if [ $START_MONGODB == 'true' ]
then
  echo "MONGO_CONTAINER_NAME=workinpace-mongodb" >> .env
  echo "MONGO_INITDB_ROOT_USERNAME=$MONGODB_USER" >> .env
  echo "MONGO_INITDB_ROOT_PASSWORD=$MONGODB_PASSWORD" >> .env
  echo "MONGO_RESTART_POLICY=unless-stopped" >> .env
  docker compose up mongo -d
else
  docker compose stop mongo
fi
