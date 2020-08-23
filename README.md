# Docker-n-Traefik
Service Discovery with Traefik

1. Apache utils
sudo apt-get install apache2-utils

```bash
htpasswd -nb admin password
admin:$apr1$d.N9fSyN$laldHl2TvioNvPvQ7pQVn1
```
copy generated hash and paste in traefik.toml in line 5

2. Docker create network for services
```bash
docker network create proxy
```

3. Create acme json file and do change file mod
```bash
touch acme.json
chmod 600 acme.json
```
4. Run the traefik

```bash
docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/traefik.toml:/traefik.toml \
  -v $PWD/acme.json:/acme.json \
  -p 80:80 \
  -p 443:443 \
  -l traefik.frontend.rule=Host:monitor.southindiantrekkers.org \
  -l traefik.port=8080 \
  --network proxy \
  --name traefik \
  traefik:v1.7.8 --docker
```
