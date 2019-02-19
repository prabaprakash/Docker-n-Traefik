sudo apt-get install apache2-utils
htpasswd -nb admin password
admin:$apr1$d.N9fSyN$laldHl2TvioNvPvQ7pQVn1
docker network create proxy
touch acme.json
chmod 600 acme.json
docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/traefik.toml:/traefik.toml \
  -v $PWD/acme.json:/acme.json \
  -p 80:80 \
  -p 443:443 \
  -l traefik.frontend.rule=Host:monitor.vaayadi.in \
  -l traefik.port=8080 \
  --network proxy \
  --name traefik \
  traefik --docker
docker-compose -f docker-compose.yml up -d