cd $HOME/docker-compose.yml

if [ $START_HOPPSCOTCH == 'true' ]
then
  echo "HOPPSCOTCH_CONTAINER_NAME=workspeace-hoppscotch" >> .env
  echo "HOPPSCOTCH_RESTART_POLICY=unless-stopped" >> .env
  docker compose up hoppscotch -d
else
  docker compose stop hoppscotch
fi
