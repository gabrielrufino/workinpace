ufw --force enable
ufw-docker install

ufw allow ssh
ufw allow http
ufw allow https
ufw reload
