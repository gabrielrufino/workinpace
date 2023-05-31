if [ "$( docker container inspect -f '{{.State.Running}}' workinpace-vscode )" == "true" ]
then
  cd $HOME/docker-compose.yml
  docker compose exec vscode sudo apt update
  docker compose exec vscode sudo apt upgrade -y 
  docker compose exec vscode sudo apt autoremove -y
fi
