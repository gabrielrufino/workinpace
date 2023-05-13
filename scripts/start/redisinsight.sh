cd $HOME/docker-compose.yml

if [ $START_REDISINSIGHT == 'true' ]
then
  echo "REDISINSIGHT_CONTAINER_NAME=workinpace-redisinsight" >> .env
  echo "REDISINSIGHT_RITRUSTEDORIGINS=https://redisinsight.$SERVER_SSH_HOST" >> .env
  echo "REDISINSIGHT_RESTART_POLICY=unless-stopped" >> .env
  docker compose up redisinsight -d
else
  docker compose stop redisinsight
fi
