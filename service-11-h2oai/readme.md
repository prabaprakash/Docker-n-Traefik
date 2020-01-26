```
sudo echo 0 > /proc/sys/vm/overcommit_memory

wget https://s3.amazonaws.com/artifacts.h2o.ai/releases/ai/h2o/dai/rel-1.8.1-146/x86_64-centos7/dai-docker-centos7-x86_64-1.8.1.1-10.0.tar.gz

docker load < dai-docker-centos7-x86_64-1.8.1.1-10.0.tar.gz 

mkdir data

mkdir log

mkdir license

mkdir tmp

docker-compose up
```
