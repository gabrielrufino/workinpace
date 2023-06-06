cd $HOME/docker-compose.yml

if [ $START_VSCODE = 'true' ]
then
  echo "VSCODE_CONTAINER_NAME=workinpace-vscode" >> .env
  echo "VSCODE_CONNECTION_TOKEN=$VSCODE_TOKEN" >> .env
  echo "VSCODE_RESTART_POLICY=unless-stopped" >> .env
  docker compose up vscode -d
else
  docker compose stop vscode
fi
