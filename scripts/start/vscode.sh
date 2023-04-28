cd $HOME/docker-compose.yml

if [ $START_VSCODE = 'true' ]
then
  ENCRYPTED_VSCODE_PASSWORD=$(htpasswd -nbs $VSCODE_USERNAME $VSCODE_PASSWORD | cut -d ':' -f 2)

  echo "VSCODE_CONTAINER_NAME=workspeace-vscode" >> .env
  echo "VSCODE_TRAEFIK_USERNAME=$VSCODE_USERNAME" >> .env
  echo "VSCODE_TRAEFIK_PASSWORD=\"$ENCRYPTED_VSCODE_PASSWORD\"" >> .env
  echo "VSCODE_RESTART_POLICY=unless-stopped" >> .env
  docker compose up vscode -d
else
  docker compose stop vscode
fi
