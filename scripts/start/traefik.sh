cd $HOME/docker-compose.yml

ENCRYPTED_TRAEFIK_PASSWORD=$(htpasswd -nbs $TRAEFIK_DASHBOARD_USERNAME $TRAEFIK_DASHBOARD_PASSWORD | cut -d ':' -f 2)

echo "TRAEFIK_CONTAINER_NAME=workinpace-traefik" >> .env
echo "TRAEFIK_BASE_HOST=$DOMAIN" >> .env
echo "TRAEFIK_ACME_EMAIL=$ACME_EMAIL" >> .env
echo "TRAEFIK_DASHBOARD_USERNAME=$TRAEFIK_DASHBOARD_USERNAME" >> .env
echo "TRAEFIK_DASHBOARD_PASSWORD=\"$ENCRYPTED_TRAEFIK_PASSWORD\"" >> .env
echo "TRAEFIK_RESTART_POLICY=always" >> .env

docker compose up traefik -d
ufw-docker allow workinpace-traefik
