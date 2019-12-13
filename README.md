# Docker-n-Traefik
Service Discovery with Traefik

```
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
  traefik:v1.7.8 --docker
 ```
