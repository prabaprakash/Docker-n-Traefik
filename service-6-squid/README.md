# Squid Forward Proxy
Configured Squid for Forward Proxy 

Steps
```
docker build . --tag squidForwardProxy

docker run -it -p 3200:3200 squidForwardProxy

For allowing ssl add extra config element
dns_v4_first on - https://serverfault.com/questions/807385/cant-connect-to-https-websites-via-squid-proxy
```
```
Note:
forked from sameersbn/squid:3.3.8-23
```
